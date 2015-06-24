
CONNECTION = SQLite3::Database.new("event.db")




CONNECTION.execute("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT);")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS places (id INTEGER PRIMARY KEY, name TEXT, attractions TEXT,
age_requirement INTEGER, hours_of_operation TEXT, address TEXT, parking_garage BOOLEAN);")
CONNECTION.execute("CREATE TABLE IF NOT EXISTS likes (id INTEGER PRIMARY KEY, user_id INTEGER, place_id INTEGER, rating INTEGER);")
# CONNECTION.execute('INSERT INTO users (name) VALUES ("patrick");')


CONNECTION.results_as_hash = true