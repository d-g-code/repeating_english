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

# READ FILE WITH WORDS, AND SET DEFAULT VALUE
# f = open('words', 'r')
# lines = f.readlines()
# for line in range(len(lines)):
#     row = lines[line]
#     cluster = row[0:-1].split()
#     new_word_eng = cluster[0]
#     new_word_pol = ' '.join(cluster[1:])
#     create_word = "INSERT INTO " \
#                   "database_words (word_eng, word_pol, amount_repeat, repeat_correct_session ) " \
#                   "VALUES ('{}', '{}', 0, 0)".format(new_word_eng, new_word_pol)
#     execute_query(connection, create_word)

# reset value repeat_correct_session
reset_value_repeat_correct_session = "UPDATE database_words SET repeat_correct_session=0"
execute_query(connection, reset_value_repeat_correct_session)


def select_words():
    # select all repeating word select by amount_repeat
    select_repeating_words = 'SELECT * from database_words ORDER BY amount_repeat DESC'
    repeating_words = execute_read_query(connection, select_repeating_words)
    return repeating_words


rw = select_words()

while rw:
    rerun_words = "SELECT * FROM database_words WHERE repeat_correct_session=0"
    rw = execute_read_query(connection, rerun_words)
    if rerun_words:
        for row in range(len(rw)):
            print(rw[row][2])
            user_answer = input()
            if user_answer == rw[row][1]:
                print(colored('GOOD', 'green'), '\n')
                modify_repeat_correct_session = "UPDATE database_words SET repeat_correct_session=1 WHERE id={}".format(
                    rw[row][0])
                execute_query(connection, modify_repeat_correct_session)
            else:
                modify_repeat_correct_session = "UPDATE database_words SET amount_repeat={} WHERE id={}".format(
                    rw[row][3] + 1, rw[row][0])
                execute_query(connection, modify_repeat_correct_session)
                print(rw[row][3] + 1)
                print(colored('BAD', 'red'))
                print(colored(rw[row][1], 'green'))
                print(colored(user_answer, 'magenta'), '\n')
