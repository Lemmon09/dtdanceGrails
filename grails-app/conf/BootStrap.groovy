import org.apache.shiro.crypto.hash.Sha256Hash

class BootStrap {
    def shiroSecurityService
    def init = {servletContext ->

        // Create the admin role
        def adminRole = ShiroRole.findByName('ROLE_ADMIN') ?:
            new ShiroRole(name: 'ROLE_ADMIN').save(flush: true, failOnError: true)

        // Create the user role
        def userRole = ShiroRole.findByName('ROLE_USER') ?:
            new ShiroRole(name: 'ROLE_USER').save(flush: true, failOnError: true)

        // Create an admin user
        def adminUser = ShiroUser.findByUsername('admin') ?:
            new ShiroUser(username: "admin",
                    passwordHash: shiroSecurityService.encodePassword('password'))
                    .save(flush: true, failOnError: true)

        // Add roles to the admin user
        assert adminUser.addToRoles(adminRole)
                .addToRoles(userRole)
                .save(flush: true, failOnError: true)

        // Create an standard user
        def standardUser = ShiroUser.findByUsername('dancer') ?:
            new ShiroUser(username: "dancer",
                    passwordHash: shiroSecurityService.encodePassword('password'))
                    .save(flush: true, failOnError: true)

        // Add role to the standard user
        assert standardUser.addToRoles(userRole)
                .save(flush: true, failOnError: true)

    }
    def destroy = {
    }
        
        
        
        
        /*servletContext ->
        def user = new ShiroUser(username: "admin", passwordHash: new Sha256Hash("password").toHex())
        user.addToPermissions("*:*")
        user.save()
       
    }
    def destroy = {
    }
     */
}
