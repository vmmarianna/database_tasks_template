from tests.utils import get_db_connect

query = ''.join(open('dump.sql').readlines())

conn = get_db_connect()
curr = conn.cursor()
curr.execute(query)
conn.commit()
