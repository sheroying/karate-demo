# Created by jchen24 at 2019/8/2
Feature: Post ad demo

# Login in
  Scenario: placeholders using xml embedded expressions
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