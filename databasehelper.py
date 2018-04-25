'''
    File name: databasehelper.py
    @desc: Provides connection and a few helper classes and
    methods for life-power.
'''
__author__= "Yanilda Peralta"
__credit__= "team 5"

__license__= "GPL"
__version__= "1.0.0"
__maintener__= "team 5"

import mysql.connector as mysqlcon



class Database:
    ##  certain features in constructor to be removed later for security
    ##app config will replace parameters
    def __init__(self, user, password,host,port,database):
        self.usr = user
        self.pswd = password
        self.host = host
        self.port = port
        self.database = database
        self.con = mysqlcon.connect(user=self.usr,password=self.pswd,
                                      host=self.host, port= self.port,
                                      database= self.database)
        self.cur=self.con.cursor()
        
    def __del__(self):
        self.cur.close()
        self.con.close()

    def execute_query(self, query, args=()):
        self.cur.execute(query,args)
        rows =  self.cur.fetchall()
        self.con.commit()
        return rows
    def getAll(self, tableName):
        query = ('SELECT * FROM  %s'%(tableName))
        rows = self.execute_query(query)
        return rows

class User:
    def __init__(self):
        self.tableName=''
        self.fname=''
        self.lname=''
        self.db= Database()
    def getAll(self):
        return self.db.getAll(self.tableName)
    
    def isUser(self, id):
        query=''
    def getOne(self, id):
        query=''

    def getRole(self, id):
        query=''

    def addOne(self, user):
        query=''
        
        


class Battery:
    def __init__(self):
        self.tableName=''

    def getAll(self):
        return self.db.getAll(self.tableName)
    
    def getOne(self, id):
        query=''

    def getType(self, id):
        query=''

    def addOne(self, battery):
        query=''



class Stock:
    def __init__(self):
        self.tableName=''

    def getAll(self):
        return self.db.getAll(self.tableName)

    def getOne(self, id):
        query=''

    def addOne(self, stock):
        query=''
 
    
    
class BatteryRequest:
    def __init__(self):
        self.tableName=''
    def getAll(self):
        return self.db.getAll(self.tableName)
    def getOne(self, id):
        query=''
    def addOne(self, request):
        query=''
    def updateOne(self, id):
        query=''
    def removeOne(self, id):
        query=''
    
    

    
    
def testConnection():
    db=Database('username','password','hostname',
                'port','tablename')
    rows = db.getAll('currilum')
    if rows is not None:
        for i in rows:
            print(i)
testConnection()
                
    

  

    
