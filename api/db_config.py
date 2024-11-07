from app import app
from flaskext.mysql import MySQL
import os
from dotenv import load_dotenv

load_dotenv()

mysql = MySQL()

app.config['MYSQL_DATABASE_USER'] = os.environ.get('MYSQL_DATABASE_USER')
app.config['MYSQL_DATABASE_PASSWORD'] = os.environ.get('MYSQL_DATABASE_PASSWORD')
app.config['MYSQL_DATABASE_DB'] = os.environ.get('MYSQL_DATABASE_DB')
app.config['MYSQL_DATABASE_HOST'] = os.environ.get('MYSQL_DATABASE_HOST', 'localhost')
app.config['MYSQL_DATABASE_PORT'] = int(os.environ.get('MYSQL_DATABASE_PORT', 3306))

print(app.config)
mysql.init_app(app)
