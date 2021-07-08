import os
from utils import get_db_cursor, TASKS_DIR

SQL_FILE = 'task_303.sql'


def test_simple_select():
    try:
        f = open(os.path.join(TASKS_DIR, SQL_FILE))
    except FileNotFoundError:
        print(f'{SQL_FILE} not found!')
        exit(1)

    query = ''.join(f.readlines())

    if not query:
        print(f'No query in file {SQL_FILE}')
        exit(1)

    cur = get_db_cursor()
    cur.execute(query)

    results = [i for i in cur.fetchall()]
    print(results)
    assert results
