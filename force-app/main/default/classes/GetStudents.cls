public with sharing class GetStudents {
    @AuraEnabled(cacheable=true)
    public static list<student__c> fetchStudents(){
        try {
            return [select id,name from student__c];
        } 
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
