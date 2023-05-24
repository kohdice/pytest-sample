from os import access

import pymysql

from .accessor import get_database_accessor

pymysql.install_as_MySQLdb()
