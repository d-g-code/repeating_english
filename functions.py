import sqlite3
from sqlite3 import Error


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
        print("Query executed successfully")
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
