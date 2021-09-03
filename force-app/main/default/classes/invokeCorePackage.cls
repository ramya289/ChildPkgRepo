global with sharing class invokeCorePackage {
    global static Contact getContactFromCorePkg(){
        try{
            invokeAcrossPackage.authorize();
            Contact conrec = invokeAcrossPackage.getContact();
            return conrec;
        }Catch(Exception e){
            System.debug('Exception :::: '+e.getMessage());
            return NULL;
        }
    }
    global static List<SObject> authorize(){
        try{
            String queryString = 'SELECT MasterLabel, Key__c,DeveloperName FROM BW_Payment__mdt WHERE DeveloperName = \'Breadwinner_Token\' LIMIT 1';
            List<SObject> testAuthList = database.query(queryString);
            System.debug('Auth-Token :::: '+ testAuthList);
            return testAuthList;
        }
        Catch(Exception e){
            System.debug('Exception :::: '+e.getMessage());
            return NULL;
        }
    }
}