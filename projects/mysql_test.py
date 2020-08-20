"""
test file for database
"""

from database import DB

db = DB(config_file="sqlconf.conf")
if db.create_database("karinadb", drop_database_first=True):
    print("database created")

