Feature: Post Ad under Antiques

Background:
* url apiBaseUrl
* header Authorization = call read('classpath:basic-auth.js') { username: 'au_iphone_app', password: 'ecgapi!global' }

Scenario: Post Ad under Antiques
#Login
Given path '/users/login'
And param username = 'DbRnkVXgFD_qabot@ebay.com'
And param password = 'gumtree'
And request ''
When method post
Then status 200
* json jsonResponse = response
* def id = jsonResponse $..user:id
#Then match jsonResponse..user:id == '6079304293322'

#save user id and token
#* def id = response/user:id == '6079304293322'
#* def token = response/user:user-logins/user:user-login/user:token

#Post Ad under Antique
Given path '/ads/'
And request ''