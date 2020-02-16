package demo.grails.controller

import demo.grails.model.User

class RegistrationController {
    
    static allowMethods = [save:"POST", update:"POST", delete:"POST"]
    
    def beforeInterceptor = [action:this.&auth]
    
    def scaffold = true
    
    def auth(){
        if(!session.user){
            redirect(controller:"Login", action:"login")
            return false
        } 
    }

    def index() {
        redirect(action: "registration")
    }
    
    def registration(){}
    
    def save() {
        def user = new User(params)
        user.save()
        render "Success"
    }
}
