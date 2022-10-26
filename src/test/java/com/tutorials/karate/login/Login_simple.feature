Feature: Login

Scenario: Login
* header Authorization = call read('classpath:basic-auth.js') { username: 'au_iphone_app', password: 'ecgapi!global' }
Given url 'https://api.cloud.qa1.gumtree.com.au/api'
And path '/users/login'
And param username = 'DbRnkVXgFD_qabot@ebay.com'
And param password = 'gumtree'
And request ''
When method post
Then status 200
