@IsTest
private without sharing class invoiceCorePkgTest {
	@IsTest
    private static void testContactMethod () {
        Contact con = new Contact(LastName = 'Ramya P');
        insert con;
        Contact con1 = invokeCorePackage.getContactFromCorePkg();
    }
}