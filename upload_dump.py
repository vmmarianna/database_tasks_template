from tests.utils import get_db_cursor

curr = get_db_cursor()

query = ''.join(open('dump.sql').readlines())

curr.execute(query)
