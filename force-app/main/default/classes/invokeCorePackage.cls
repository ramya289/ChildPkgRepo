global with sharing class invokeCorePackage {
    global static Contact getContactFromCorePkg(){
        Contact conrec = invokeAcrossPackage.getContact();
        return conrec;
    }
}