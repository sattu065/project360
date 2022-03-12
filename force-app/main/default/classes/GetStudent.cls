public with sharing class GetStudent {
    @AuraEnabled(cacheable=true)
    public static list<student__c> fetchStudents(){
        try {
            return [select id,name,Group__c, school__c from student__c];
        } 
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled(cacheable=true)
    public static list<school__c> fetchSchools(){
        try {
            return [select id,name from school__c];
        } 
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled(cacheable=true)
    public static list<Group__c> fetchGroups(){
        try {
            return [select id,name from Group__c];
        } 
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
