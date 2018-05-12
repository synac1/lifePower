##
# file name: app.py
# author: Yanilda Peralta
##
import os
from flask import Flask, render_template, request, send_from_directory, redirect
from flask import session, url_for, flash, send_file, send_from_directory
from flask_bootstrap import Bootstrap
import databasehelper as db
#----------------------------------------
# initialization
#----------------------------------------

app = Flask(__name__)
Bootstrap(app)
app.config.update(
    DEBUG = True,
)
app.config['SECRET_KEY']="your secret key"
##Changing later

#----------------------------------------
# controllers
#----------------------------------------

@app.route('/favicon.ico')
def favicon():
    return send_from_directory(os.path.join(app.root_path, 'static'), 'ico/favicon.ico')

@app.errorhandler(404)
def page_not_found(e):
    return "404 page not found"

@app.route("/")
def index():
    if session.get('id_user'):
        return redirect('/userHome')
    else:
        return render_template('signin.html')


@app.route('/validateLogin',methods=['POST'])
def validateLogin():
    try:
        _username = request.form['inputUserName']
        _password = request.form['inputPassword']
        users=db.Users()

        if users.isUser(_username):
            userInfo=users.getAdminInfoValid(_username,_password)
            if userInfo is not None:
                session['id_user'] = userInfo['id_user']
                session['id_role'] = userInfo['id_role']
                return redirect('/userHome')
            else:
                return render_template('error.html',error = 'Wrong UserName or Password.')

        else:
            return render_template('error.html',error = 'Wrong UserName or Password.')

    except Exception as e:
        return render_template('error.html',error = str(e))


@app.route('/userHome')
def userHome():
    users=db.Users()
    if session.get('id_user') and session.get('id_role'):
        roleId = session.get('id_role')
        role = users.getRole(roleId)
        session['role']=role
        if role is not None:
            if role =="manager":
                return redirect('/mDashboard')
            if role =="courier":
                return redirect('/cDashboard')
            if role =="user":
                return redirect('/uDashboard')
            if role =="enterprise":
                return redirect('/eDashboard')
        else:
            return render_template('error.html',error = 'Please contact your Admin')
    else:
        return render_template('error.html',error = 'Unauthorized Access')




#----------------------------------------
# Authenthification 
#----------------------------------------
@app.route("/login")
def login():
   return "login"
@app.route("/logout")
def logout():
    session.pop('id_user',None)
    session.pop('id_role',None)
    return redirect('/')
#----------------------
# After Loggin
#----------------------
@app.route("/mDashboard")
def dashboardManager():
    return render_template('managerDashboard.html')

@app.route("/cDashboard")    
def dashboardCourier():
    return render_template('courierDashboard.html')

@app.route("/uDashboard")
def dashboardUser():
    id_user = session.get('id_user')
    bRequest= db.BatteryRequest()
    data=bRequest.getAllByUser(id_user)
    user=db.Users().getOne(id_user)
    return render_template('userDashboard.html', data=data, user=user)

@app.route("/eDashboard")
def dashboardPremium():
    return render_template('enterpriseDashboard.html')


#-------------------------------------
# Manager
#--------------------------------------
@app.route("/mRequests")
def manageRequests():
    if session.get('role')=='manager':
        return render_template('manageRequests.html')
    else:
        return render_template('error.html',error = '404')
        
@app.route("/mCouriers")
def manageCouriers():
    if session.get('role')=='manager':
        return render_template('manageCouriers.html')
    else:
        return render_template('error.html',error = '404')

        
@app.route("/mStock")
def manageStock():
    if session.get('role')=='manager':
        return render_template('manageStock.html')
    else:
        return render_template('error.html',error = '404')

#-----------------------------------------
#User
#-----------------------------------------

@app.route('/batteryRequest',methods=['POST'])
def batteryRequestHandler():
   
    bRequest= db.BatteryRequest()
    if session.get('role')=='user':
        try:
            quantities=request.form['quantities']
            id_user = session.get('id_user')
            bRequest.addOne(id_user,int(quantities))
            flash('You Successfully Requested %s batteries'%(quantities))
            return redirect("/")
        except Exception as e:
            return render_template('error.html',error = str(e))
    else:
        return render_template('error.html',error = '404')
    
#----------------------------------------
# launch
#----------------------------------------

if __name__ == "__main__":
    print("Running on port 80")
    port = int(os.environ.get("PORT", 80))
    app.run(host='0.0.0.0', port=port)


    


