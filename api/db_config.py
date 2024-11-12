from app import app
from flaskext.mysql import MySQL
mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'testuser'
app.config['MYSQL_DATABASE_PASSWORD'] = 'testpass'
app.config['MYSQL_DATABASE_DB'] = 'utn'
app.config['MYSQL_DATABASE_HOST'] = 'db-crud-users'
mysql.init_app(app)