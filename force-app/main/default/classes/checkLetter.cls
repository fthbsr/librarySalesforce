public class checkLetter implements
    Database.Batchable<sObject> {

        public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'Select Name From  writer__c'
        );
    }
    public void execute(Database.BatchableContext bc, List<Writer__c> scope){
        List<Writer__c> writers = new List<Writer__c>();
        for( Writer__c writer  : scope) {
            if(writer.name == writer.name.toLowerCase() ){
                writer.name= writer.name.toUpperCase();
                writers.add(writer);
            }
            update writers;
        }

    }
    public void finish(Database.BatchableContext bc){
        
    }
}