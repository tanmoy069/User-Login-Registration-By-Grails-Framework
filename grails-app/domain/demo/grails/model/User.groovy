package demo.grails.model

class User {
    
    String email, firstName, lastName, address, password
    Long phone
    Date dateOfBirth

    static constraints = {
        email(unique:true)
        password(password:true)
    }
}
