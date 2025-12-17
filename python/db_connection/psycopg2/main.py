import psycopg2
from psycopg2 import OperationalError

def create_connection(db_name, db_user, db_password, db_host, db_port):
    try:
        connection = psycopg2.connect(
            database=db_name,
            user=db_user,
            password=db_password,
            host=db_host,
            port=db_port
        )
        print("Connection to PostgreSQL DB successful")
        return connection
    except OperationalError as e:
        print(f"Error: {e}")
        return None


def create_database(connection, db_name):
    connection.autocommit = True
    cursor = connection.cursor()
    try:
        cursor.execute(f"CREATE DATABASE {db_name}")
        print(f"Database '{db_name}' created successfully")
    except OperationalError as e:
        print(f"Error: {e}")
    finally:
        cursor.close()


connection = create_connection(
    db_name="postgres",
    db_user="postgres",
    db_password="1234",
    db_host="localhost",
    db_port=5432
)

if connection:
    create_database(connection, "test")
    connection.close()