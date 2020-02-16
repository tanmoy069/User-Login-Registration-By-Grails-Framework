package demo.grails.controller

import demo.grails.model.User

class LoginController {
    
    static allowMethods = [save:"POST", update:"POST", delete:"POST"]

    def index() {
        redirect(action: "login", params: params)
    }
    def login = { }
    
    def authenticate = {
        def user = User.findByEmailAndPassword(params.email, params.password)
        if(user){
                session.user = user
                flash.message = "Hello ${user.firstName}!"
                render(view:"profile", model:[user:user])
        }
        else if(params.email == "admin@localhost.local" && params.password == "admin"){
            session.user = new User()
            redirect(action:"admin")
        }
        else {
            flash.message = "Sorry, ${params.email}, Something went wrong, please check your mail or password"
            redirect(action:"login")
        }
    }
    
    def logout = {
        flash.message = "GoodBye ${session.user.firstName}!"
        session.user = null
        redirect(action:"login")
    }
    
//    def passwordValidation = {
//        if(session.user){
//            if(params.password == ${session.user.password}) {
//                session.user.password = params.newPassword
//                session.user.save()
//                flash.message = "Password has been changed"
//                redirect(action:"changePassword")                
//            }
//            else{
//                flash.message = "Sorry your old password is wrong"
//                redirect(action:"changePassword")                
//            }
//        }
//        else {
//            flash.message = "Session timeout, please login first"
//            redirect(action:"changePassword")
//        }
//    }
    
    
    
    def profile = {
        if(session.user != null){
            render(view:"profile", model:[user:session.user])
        }
        else{
            redirect(action: "login", params: params)
        }
    }
    
    //changing password action is undone.
    def changePassword = {}
    
    // Part of admin controller done here, because beforeInterceptor isn't working properly 
    def admin() {
        if(session.user != null){
            List<User> userList = User.findAll()
            render(view:"admin", model:[userList:userList] )
        }
        else{
            redirect(action: "login", params: params)
        }
        
    }
    
    def search = {
        if(session.user != null){
            List<User> searchList = User.findAllByFirstNameLike("%"+params.searchUser+"%")
            render(view:"admin", model:[userList:searchList])
        }        
        else{
            redirect(action: "login", params: params)
        }
    }
}
