# Created by jchen24 at 2019/8/2
Feature: Post ad demo

  Background:
    * url apiBaseUrl

  # set basic authentication
    * def autoJson = { username: '', password: '' }
    * eval autoJson.username = basicAuthUser
    * eval autoJson.password = basicAuthPwd
    * header Authorization = call read('classpath:basic-auth.js') autoJson
    * def basicAuth = call read('classpath:basic-auth.js') autoJson
    * print basicAuth

  Scenario: placeholders using xml embedded expressions
    Given path '/users/login'
    And param username = 'DbRnkVXgFD_qabot@ebay.com'
    And param password = 'gumtree'
    And request ''
    When method post
    Then status 200
#* print response

# save user id and token
    * def userId = karate.xmlPath(response, '/user-logins/user-login/id')
    * def token = karate.xmlPath(response, '/user-logins/user-login/token')
    * print id
    * print token

# Prepare payload
    * def price = '148'
    * def title = 'Karate demo for post ad'
    * def description = 'Default description'
    * def address = '89 York St, South Melbourne VIC 3205'
    * def email = 'DbRnkVXgFD_qabot@ebay.com'
    * def contactName = 'karate test user'
    * def prefixCateName = 'antiques_collectables_collectables'
    * def categoryLocalizedName = 'classes'
    * def condition = 'new'
    * def categoryId = '20040'
    * def location = '3003435'
    * def reqPayload = read('../xml/template/antique.xml')
    * print reqPayload

# Post ad under antique
    * configure headers = read('classpath:headers.js')
    Given path '/ads/'
    And request reqPayload
#    And header x-ecg-authorization-user = 'id= userId, token = token'
    When method post
    Then status 201
