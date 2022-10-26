Feature: Login and read env from system properties

Background:
* url apiBaseUrl
* header Authorization = call read('classpath:basic-auth.js') { username: 'au_iphone_app', password: 'ecgapi!global' }

Scenario: Login and read env from system properties
Given path '/users/login'
And param username = 'DbRnkVXgFD_qabot@ebay.com'
And param password = 'gumtree'
And request ''
When method post
Then status 200
