from default_test_cases import simple_select_assert

TASK_NUMBER = 303
SQL_FILE = f'task_{TASK_NUMBER}.sql'


def test_simple_select():

    simple_select_assert(SQL_FILE, TASK_NUMBER)
