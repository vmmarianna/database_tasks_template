from tests.utils import get_db_connect

query = ''.join(open('buses1.sql').readlines())

conn = get_db_connect()
curr = conn.cursor()
curr.execute(query)
conn.commit()
