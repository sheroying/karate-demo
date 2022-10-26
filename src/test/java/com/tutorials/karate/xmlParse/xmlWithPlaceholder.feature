Feature: #Enter feature name here

Scenario: placeholders using xml embedded expressions
  * def phoneNumber = '123456'
  * def search = { wireless: true, voip: false, tollFree: false }
  * def req = read('soap1.xml')
  * print req
  * def phone = $req/Envelope/Body/getAccountByPhoneNumber
  * match phone /getAccountByPhoneNumber/phoneNumber == '123456'
  * match phone ==
    """
    <acc:getAccountByPhoneNumber>
        <acc:phoneNumber>123456</acc:phoneNumber>
        <acc:phoneNumberSearchOption>
            <acc:searchWirelessInd>true</acc:searchWirelessInd>
            <acc:searchVoipInd>false</acc:searchVoipInd>
            <acc:searchTollFreeInd>false</acc:searchTollFreeInd>
        </acc:phoneNumberSearchOption>
    </acc:getAccountByPhoneNumber>
    """
# string comparisons may be simpler than xpath in some cases
 * xmlstring reqString = req
 * match reqString contains '<acc:phoneNumber>123456</acc:phoneNumber>'
 * print req
 * print 'pretty print:', req