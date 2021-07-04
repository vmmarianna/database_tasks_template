import os

import psycopg2

POSTGRES_HOST = os.environ.get('POSTGRES_HOST')
POSTGRES_USER = os.environ.get('POSTGRES_USER')
POSTGRES_PASSWORD = os.environ.get('POSTGRES_PASSWORD')
POSTGRES_PORT = os.environ.get('POSTGRES_PORT')
POSTGRES_DB = 'postgres'

TASKS_DIR = os.path.abspath('../tasks')


def get_db_connect():
    return psycopg2.connect(
        host=POSTGRES_HOST,
        database=POSTGRES_DB,
        user=POSTGRES_USER,
        password=POSTGRES_PASSWORD)


def get_db_cursor():
    return get_db_connect().cursor()
