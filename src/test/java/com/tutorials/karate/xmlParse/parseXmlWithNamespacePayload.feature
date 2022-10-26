Feature:

Scenario: xml with namespaces
* def xmlVar = <ns1:root xmlns:ns1="http://foo.com" xmlns:ns2="http://bar.com"><ns2:foo fizz="buzz" ping="pong">bar</ns2:foo></ns1:root>
* match xmlVar/root/foo == 'bar'
* match xmlVar/root/foo/@fizz == 'buzz'
* def fizz = karate.xmlPath(xmlVar, '/root/foo/@fizz')
* print fizz
