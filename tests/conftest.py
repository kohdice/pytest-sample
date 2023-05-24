import os

host = "localhost"
if os.getenv("STAGE") == "develop":
    host = "db"

CONNECTION_URL = (
    f"mysql+mysqldb://user:password@{host}:3306/main_db?charset=utf8"
)
