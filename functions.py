import sqlite3
import re
from sqlite3 import Error
from datetime import date


def create_connection(path):
    conn = None
    try:
        conn = sqlite3.connect(path)
        print(sqlite3.version)
        print('Connection to SQLite DB successful')
    except Error as name_error:
        print(f"The error with connection '{name_error}'")
    return conn


def execute_query(conn, query, *args):
    cursor = conn.cursor()
    try:
        cursor.execute(query, args)
        conn.commit()
    except Error as error:
        print(f"The error with execute query '{error}'")


def execute_read_query(conn, query):
    cursor = conn.cursor()
    result = None
    try:
        cursor.execute(query)
        result = cursor.fetchall()
        return result
    except Error as error:
        print(f"The error with read '{error}'")


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


def add_words_from_file(conn, file):
    """
    Function reads the file checks new words with existing and adds the word if it is new
    """
    f = open(file, 'r')
    lines = f.readlines()
    for line in range(len(lines)):
        row = lines[line]
        cluster = row[0:-1].split()
        new_word_eng = cluster[0]
        new_word_pol = ' '.join(cluster[1:])

        today = str(date.today())
        add_word_date = today[8:] + '-' + today[5:7] + '-' + today[:4]

        ask_query = "select * from database_words where word_eng='{}';".format(new_word_eng)
        ask = execute_read_query(conn, ask_query)
        if not ask:
            create_word = "INSERT INTO " \
                          "database_words (add_date, word_eng, word_pol, amount_repeat, repeat_correct_session) " \
                          "VALUES ('{}', '{}', '{}', 0, 0)".format(add_word_date, new_word_eng, new_word_pol)
            execute_query(conn, create_word)
            print("words added: ", create_word)
        else:
            print("This word is already in database: ", ask[0][2])


def add_sentence_from_file(connection_words, connection_sentence, file):
    f = open(file, 'r')
    lines = f.readlines()
    for line in range(len(lines)):
        row = lines[line]
        row_list = re.split(r',', row)
        word_key = row_list[0]
        sentence_english = row_list[1][1:]
        sentence_polish = row_list[2][1:-2]
        find_id_record_word = "SELECT * FROM database_words where word_eng='{}';".format(word_key)
        record_with_word = execute_read_query(connection_words, find_id_record_word)

        create_sentence = "INSERT INTO database_sentence (sentence_eng, sentence_pol, id_word_eng) VALUES(?, ?, ?);"
        execute_query(connection_sentence, create_sentence, sentence_english, sentence_polish, record_with_word[0][0])


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
