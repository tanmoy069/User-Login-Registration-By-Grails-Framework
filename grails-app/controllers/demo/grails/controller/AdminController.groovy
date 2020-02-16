package demo.grails.controller

import demo.grails.model.User

class AdminController {
    
    static allowMethods = [save:"POST", update:"POST", delete:"POST"]
    
    //this beforInterceptor isn't working correctly, that's why I done everything into LoginController
    def beforeInterceptor = [action:this.&auth]
    
    def scaffold = true
    
    def auth(){
        if(!session.user){
            redirect(controller:"Login", action:"login")
            return false
        } 
    }

    def index() {
        List<User> userList = User.findAll()
        render(view:"admin", model:[userList:userList])
    }
    
    def search = {
        List<User> searchList = User.findAllByFirstNameLike("%"+params.searchUser+"%")
        render(view:"admin", model:[userList:searchList])
    }
    
}
