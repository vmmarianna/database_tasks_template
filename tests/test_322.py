from default_test_cases import simple_select_assert

TASK_NUMBER = 322
SQL_FILE = f'task_{TASK_NUMBER}.sql'


def test_task_322():
    simple_select_assert(SQL_FILE, TASK_NUMBER)
