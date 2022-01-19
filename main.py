from termcolor import colored
from functions import create_connection, execute_query, execute_read_query, add_word, add_words_from_file
import sys
import argparse


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


# reset value repeat_correct_session
reset_value_repeat_correct_session = "UPDATE database_words SET repeat_correct_session=0"
execute_query(connection, reset_value_repeat_correct_session)


def select_words():
    # select all repeating word select by amount_repeat
    select_repeating_words = 'SELECT * from database_words ORDER BY amount_repeat DESC'
    repeating_words = execute_read_query(connection, select_repeating_words)
    return repeating_words


rw = select_words()

file = 'words'
add_words_from_file(connection, file)


def foo():
    rerun_words = "SELECT * FROM database_words WHERE repeat_correct_session=0 ORDER BY amount_repeat DESC"
    rw = execute_read_query(connection, rerun_words)
    if rerun_words:
        for row in range(len(rw)):
            print(rw[row][3])
            user_answer = input()
            if user_answer == rw[row][2]:
                print(colored('GOOD', 'green'), '\n')
                modify_repeat_correct_session = "UPDATE database_words SET repeat_correct_session=1 WHERE id={}".format(
                    rw[row][0])
                execute_query(connection, modify_repeat_correct_session)
            else:
                modify_repeat_correct_session = "UPDATE database_words SET amount_repeat={} WHERE id={}".format(
                    rw[row][4] + 1, rw[row][0])
                execute_query(connection, modify_repeat_correct_session)
                print(colored('BAD', 'red'))
                print(colored(rw[row][2], 'green'))
                print(colored(user_answer, 'magenta'), '\n')


def roo():
    print("słowo ang")
    ang = input()
    print("słowo pol")
    pol = input()
    record = ang + ' | ' + pol
    print(record,)
    decison = input("Y / R / N: ")
    if decison.lower() == 'y':
        print('OK, new word in database')
    if decison.lower() == 'r':
        roo()
    if decison.lower() == 'n':
        pass


if __name__ == "__main__":
    if len(sys.argv) == 1:
        foo()
    else:
        parser = argparse.ArgumentParser()
        parser.add_argument("add", type=str)
        args = parser.parse_args()
        if args.add:
            add_word()


