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
        self.cur=self.con.cursor(dictionary=True)
        
    def __del__(self):
        self.cur.close()
        self.con.close()

    def execute_query_all(self, query, args=()):
        self.cur.execute(query,args)
        rows =  self.cur.fetchall()
        self.con.commit()
        return rows
    def execute_query_one(self, query, args=()):
        self.cur.execute(query,args)
        rows =  self.cur.fetchone()
        self.con.commit()
        return rows
    
    def getAll(self, tableName):
        query = ('SELECT * FROM  %s'%(tableName))
        rows = self.execute_query_all(query)
        return rows

class User:
    def __init__(self):
        self.id=0
        self.email=''
        self.fname=''
        self.lname=''
        self.role=''
        self.device=''
        self.phone=''
        self.lat=0.0
        self.lng=0.0
        self.roleId=0
        
class Users:
    def __init__(self):
        self.tableName='user'
        self.db= Database('root','test1234','127.0.0.1',
                '3308','mydb')
    def getAll(self):
        return self.db.getAll(self.tableName)
    
    def isUser(self, login):
        adminTable='admin'
        query='select count(*) from '+adminTable+' where login = (%s)' 
        count= self.db.execute_query_one(query, (login,))
        print(count)
        if count['count(*)'] == 1 :
            return True
        else:
            return False
    def getAdminInfoValid(self, login, password):
        adminTable='admin'
        query='select id_user, id_role, id_admin from '+adminTable+' where login = (%s) and password = (%s)'
        info= self.db.execute_query_one(query, (login,password,))
        if info is not None :
            return info
        else:
            return None
    def _getRoleId(self, userId):
        adminTable='admin'
        query='select id_role from '+adminTable+' where id_user = (%s)'
        info= self.db.execute_query_one(query, (userId,))
        if info is not None :
            return info['id_role']
        else:
            return None
    def getId(self,login,password):
        info=getAdminInfoValid(self, login, password)
        if info is not None:
            return info['id_user']
        else:
            return None
    def _getIdbyEmail(self, email):
        query=''
    def getOne(self, id):
        query='select * from '+self.tableName+' where id_user=(%s) '
        row= self.db.execute_query_one(query, (id,))
        print(row)
        if row is not None:
            user= User()
            user.id=id
            user.email=row['email']
            user.fname=row['fname']
            user.lname=row['lname']
            user.phone=row['phone']
            user.device=row['device']
            user.lat=row['gps_latitude']
            user.lng=row['gps_longitude']
            user.roleId=self._getRoleId(user.id)
            user.role=self.getRole(user.roleId)
            return user
        else:
            return None

    def getRole(self, roleId):
        query='select role  from role  where id_role = (%s) '
        role= self.db.execute_query_one(query, (roleId,))
    
        if role is not None:
            return role['role']
        else:
            return None

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
        self.tableName='requests'
        self.db= Database('root','test1234','127.0.0.1',
                '3308','mydb')
    def getAll(self):
        return self.db.getAll(self.tableName)
    def getOne(self, id):
        query=''
    def getAllByUser(self, id_user):
        query='select * from ' + self.tableName + ' where id_user = %s ORDER BY created DESC'

        rows=self.db.execute_query_all(query,(id_user,))
        return rows
        
    def addOne(self, id_user, quantity):
        user=Users().getOne(id_user)
        query='insert into ' + self.tableName + ' (id_user, status) values(%s,%s)'
        request=self.db.execute_query_one(query,(id_user,'pending'))
        id_request=self.db.cur.lastrowid
        requestItemQuery ='insert into request_items (id_request) values(%s)'
        for i in range(quantity):
            self.db.execute_query_one(requestItemQuery, (id_request,))
            
    def updateOne(self, id):
        query=''
    def removeOne(self, id):
        query=''
    
    

    
def testConnection():
    user=Users()
    #print(user.isUser("Manager3000"))
    #print(user.getAdminInfoValid('Manager3000', 'test12345'))
testConnection()
                
    

  

    
