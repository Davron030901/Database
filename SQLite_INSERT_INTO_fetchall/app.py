import sqlite3

connection=sqlite3.connect('movies.db')
cursor=connection.cursor()

famousFilms=[('Pulp Fiction','Quentin Tarantino',1994),('Blac to the Future','Robert Zamackis',1985),('Moonrise Kingdom','Wes Anderson',2012)]
cursor.executemany('INSERT INTO Movies VALUES (?,?,?)',famousFilms)
cursor.execute('''SELECT * FROM Movies''')
print(cursor.fetchall())

connection.commit()
connection.close()
