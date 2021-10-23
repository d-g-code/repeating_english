from termcolor import colored
from functions import create_connection, execute_query, execute_read_query


# Queries
create_table_repeating_word = """
CREATE TABLE IF NOT EXISTS database_words (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    word_eng TEXT NOT NULL,
    word_pol TEXT NOT NULL,
    amount_repeat INTEGER,
    repeat_correct_session INTEGER
);
"""
connection = create_connection('database_words.db')
execute_query(connection, create_table_repeating_word)

# create_word = """
# INSERT INTO
#     database_words (word_eng, word_pol, amount_repeat)
# VALUES
#     ('tree', 'drzewo', 0),
#     ('grass', 'trawa', 0)
# """
# execute_query(connection, create_word)

# select all repeating word
select_repeating_words = "SELECT * from database_words"
repeating_words = execute_read_query(connection, select_repeating_words)


def repeat(rw):
    for row in range(len(rw)):
        print(rw[row][2])
        user_answer = input()
        if user_answer == rw[row][1]:
            print(colored('GOOD', 'green'), '\n')
        else:
            print(colored('BAD', 'red'))
            print(colored(rw[row][1], 'green'))
            print(colored(user_answer, 'blue'), '\n')


repeat(repeating_words)
