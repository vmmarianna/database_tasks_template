from utils import get_db_cursor, get_query_from_file, get_benchmark_query

TASK_NUMBER = 303
SQL_FILE = f'task_{TASK_NUMBER}.sql'


def test_simple_select():

    query = get_query_from_file(SQL_FILE)
    benchmark_query = get_benchmark_query(TASK_NUMBER)

    if not query:
        print(f'No query in file {SQL_FILE}')
        exit(1)

    cur = get_db_cursor('dict')
    cur.execute(query)

    results = [i for i in cur.fetchall()]
    print('User Results: ', results)

    cur = get_db_cursor('dict')
    cur.execute(benchmark_query)

    benchmark_results = [i for i in cur.fetchall()]
    print('Benchmark Results: ', results)

    assert results == benchmark_results
