Feature: Login and read env and authentication from system properties

  Background:
    * url apiBaseUrl
  # set basic authentication
    * def autoJson = { username: '', password: '' }
    * eval autoJson.username = basicAuthUser
    * eval autoJson.password = basicAuthPwd
    * header Authorization = call read('classpath:basic-auth.js') autoJson

  Scenario: placeholders using xml embedded expressions
    Given path '/users/login'
    And param username = 'DbRnkVXgFD_qabot@ebay.com'
    And param password = 'gumtree'
    And request ''
    When method post
    Then status 200