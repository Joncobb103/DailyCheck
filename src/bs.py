'''
Created on Nov 26, 2017

@author: root
'''
import os
import sys
from Utils import Utils
from Sql import Sql

util = Utils()
mydir = os.getcwd()
args = sys.argv[1:]
argMap = util.getArgPairs(args, '=')
hostname = argMap.get("url")
username = argMap.get("uid")
password = argMap.get("password")
db = argMap.get("db")
sql = Sql(hostname, username, password, db)

county = 'stjohns'
dep_date = '2017-11-16'

query = util.readFile(mydir,'sqlFiles/stjohns.sql')
pre_null_query = query.replace('(REPLACE COUNTY)', county).replace('(REPLACE DATE)',dep_date)

null_dep_query = pre_null_query.replace('(NULL OR NOT NULL)','null')
not_null_dep_query = pre_null_query.replace('(NULL OR NOT NULL)','not null')

null_list = sql.find(null_dep_query)
not_null_list =sql.find(not_null_dep_query)