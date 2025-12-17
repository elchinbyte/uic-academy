import sqlite3

def init_db(connection):
    cursor = connection.cursor()
    cursor.execute(
        """CREATE TABLE IF NOT EXISTS contacts(
        id INTEGER PRIMARY KEY, name TEXT, email TEXT UNIQUE
        )"""
    )
    connection.commit()

def add_contacts(connection):
    cursor = connection.cursor()
    cursor.executemany(
        "INSERT INTO contacts (name, email) VALUES (?, ?)",
        [
            ("Arthur", "arthur@example.com"),
            ("Bob", "bob@example.com"),
        ]
        
    )
    connection.commit()

def display_contacts(connection):
    cursor = connection.cursor()
    cursor.execute(
        "SELECT * FROM contacts"
    )
    
    for id, name, email in cursor.fetchall():
        print(f"{id}: {name} - {email}")

def main():
    with sqlite3.connect("contacts.db") as connection:
        init_db(connection)
        add_contacts(connection)
        display_contacts(connection)

if __name__ == "__main__":
    main()