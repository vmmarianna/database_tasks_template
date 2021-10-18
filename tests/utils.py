import json
import os

import psycopg2
from psycopg2.extras import RealDictCursor

BENCHMARK_JSON_PATH = 'benchmark_queries.json'

POSTGRES_HOST = os.environ.get('POSTGRES_HOST', 'localhost')
POSTGRES_USER = os.environ.get('POSTGRES_USER', 'postgres')
POSTGRES_PASSWORD = os.environ.get('POSTGRES_PASSWORD', 'postgres')
POSTGRES_PORT = os.environ.get('POSTGRES_PORT', 5432)
POSTGRES_DB = 'postgres'

TASKS_DIR = os.path.abspath('tasks')


def get_db_connect():
    return psycopg2.connect(
        host=POSTGRES_HOST,
        database=POSTGRES_DB,
        user=POSTGRES_USER,
        password=POSTGRES_PASSWORD)


def get_db_cursor(return_as: str = ''):
    if return_as == 'dict':
        return get_db_connect().cursor(cursor_factory=RealDictCursor)
    return get_db_connect().cursor()


def get_query_from_file(filename: str) -> str:
    try:
        f = open(os.path.join(TASKS_DIR, filename))
    except FileNotFoundError:
        print(f'{filename} not found!')
        exit(1)
    else:
        return ''.join(f.readlines())


def get_benchmark_query(task_number: int) -> str:
    return __load_query_from_json(task_number)


def __load_query_from_json(task_number: int) -> str:
    try:
        f = open(BENCHMARK_JSON_PATH)
    except FileNotFoundError:
        print(f'Benchmark json not found! {BENCHMARK_JSON_PATH}')
        exit(1)
    else:
        query = json.load(f).get(str(task_number))
        if not query:
            print('Query not found')
            exit(1)
        return query
