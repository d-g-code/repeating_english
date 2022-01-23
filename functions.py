import sqlite3
from sqlite3 import Error
from datetime import date


def create_connection(path):
    conn = None
    try:
        conn = sqlite3.connect(path)
        print(sqlite3.version)
        print('Connection to SQLite DB successful')
    except Error as name_error:
        print(f"The error '{name_error}'")
    return conn


def execute_query(conn, query):
    cursor = conn.cursor()
    try:
        cursor.execute(query)
        conn.commit()
    except Error as error:
        print(f"The error '{error}'")


def execute_read_query(conn, query):
    cursor = conn.cursor()
    result = None
    try:
        cursor.execute(query)
        result = cursor.fetchall()
        return result
    except Error as error:
        print(f"The error '{error}'")


def add_word():
    print("Word in English")
    ang = input()
    print("Slowo po Polsku")
    pol = input()
    record = ang + ' | ' + pol
    print(record,)
    decision = input("Y / R / N: ")
    if decision.lower() == 'y':
        print('OK, new word in database')
    if decision.lower() == 'r':
        add_word()
    if decision.lower() == 'n':
        pass


# Function NEED correct
def add_words_from_file(conn, file):
    # READ FILE WITH WORDS, ADD, AND SET DEFAULT VALUE
    f = open(file, 'r')
    lines = f.readlines()
    for line in range(len(lines)):
        row = lines[line]
        cluster = row[0:-1].split()
        new_word_eng = cluster[0]
        new_word_pol = ' '.join(cluster[1:])

        today = str(date.today())
        add_word_date = today[8:] + '-' + today[5:7] + '-' + today[:4]
        create_word = "INSERT INTO " \
                      "database_words (add_date, word_eng, word_pol, amount_repeat, repeat_correct_session) " \
                      "VALUES ('{}', '{}', '{}', 0, 0)".format(add_word_date, new_word_eng, new_word_pol)
        # execute_query(conn, create_word)


def add_word():
    print("słowo ang")
    ang = input()
    print("słowo pol")
    pol = input()
    record = ang + ' | ' + pol
    print(record,)
    decision = input("Y / R / N: ")
    if decision.lower() == 'y':
        print('OK, new word in database')
    if decision.lower() == 'r':
        add_word()
    if decision.lower() == 'n':
        pass
