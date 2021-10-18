from tests.utils import get_query_from_file, get_benchmark_query, get_db_cursor


def simple_select_assert(sql_file: str, task_number: int):
    query = get_query_from_file(sql_file)
    benchmark_query = get_benchmark_query(task_number)

    if not query:
        print(f'No query in file {sql_file}')
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
