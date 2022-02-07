from termcolor import colored
from functions import create_connection, execute_query, execute_read_query, add_word, add_words_from_file, add_word, \
                        add_sentence_from_file
import sys
import argparse
import io
from datetime import date


# Queries
create_table_repeating_word = """
CREATE TABLE IF NOT EXISTS database_words (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    add_date TEXT NOT NULL,
    word_eng TEXT NOT NULL,
    word_pol TEXT NOT NULL,
    amount_repeat INTEGER,
    repeat_correct_session INTEGER
);
"""
connection = create_connection('database_words.db')
execute_query(connection, create_table_repeating_word)

create_table_repeating_sentence = """
CREATE TABLE IF NOT EXISTS database_sentence (
    id_sentence INTEGER PRIMARY KEY,
    sentence_eng TEXT NOT NULL,
    sentence_pol TEXT NOT NULL,
    id_word_eng INTEGER,
    FOREIGN KEY(id_word_eng) REFERENCES database_words(id)
);
"""
connection_sentence = create_connection('database_sentence.db')
execute_query(connection_sentence, create_table_repeating_sentence)

# Convert data database_words.db to SQL dump file db_buckup.sql
with io.open('db_buckup.sql', 'w') as db:
    for line in connection.iterdump():
        db.write('%s\n' % line)
    print('Database saved as db_buckup.sql')

# reset value repeat_correct_session
reset_value_repeat_correct_session = "UPDATE database_words SET repeat_correct_session=0"
execute_query(connection, reset_value_repeat_correct_session)


def select_words():
    # select all repeating word select by amount_repeat
    select_repeating_words = 'SELECT * from database_words ORDER BY amount_repeat DESC'
    repeating_words = execute_read_query(connection, select_repeating_words)
    return repeating_words


rw = select_words()


def repeat_words(words):
    rerun_words = words
    rw = execute_read_query(connection, rerun_words)
    if rerun_words:
        for row in range(len(rw)):
            print(rw[row][3])
            user_answer = input('→ ')
            if user_answer == rw[row][2]:
                print()
                modify_repeat_correct_session = "UPDATE database_words SET repeat_correct_session=1 WHERE id={}".format(
                    rw[row][0])
                execute_query(connection, modify_repeat_correct_session)
            else:
                modify_repeat_correct_session = "UPDATE database_words SET amount_repeat={} WHERE id={}".format(
                    rw[row][4] + 1, rw[row][0])
                execute_query(connection, modify_repeat_correct_session)
                print(colored(rw[row][2], 'red'), '\n')


if __name__ == "__main__":
    if len(sys.argv) == 1:
        # option choice way to repeat words
        choice = int(input("How do you want repeating words?\n"
                           "1.New words from today\n"
                           "2.The hardest words for you\n"
                           "3.All words\n"))
        if choice == 1:
            choice_last_records = "SELECT * FROM database_words ORDER BY id DESC LIMIT 1"
            last_record = execute_read_query(connection, choice_last_records)
            query_all_recently_data_records = "SELECT * from database_words where add_date='{}'".format(last_record[0][1])
            repeat_words(query_all_recently_data_records)
        if choice == 2:
            choice_words = "SELECT * FROM database_words WHERE amount_repeat>=1"
            repeat_words(choice_words)
        if choice == 3:
            choice_words = "SELECT * FROM database_words WHERE repeat_correct_session=0 ORDER BY amount_repeat DESC"
            print("all")
            repeat_words(choice_words)
    else:
        parser = argparse.ArgumentParser()
        parser.add_argument("add", type=str)
        args = parser.parse_args()
        if args.add:
            add_word()
