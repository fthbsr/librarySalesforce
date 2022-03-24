public class LibraryController {

    //Adim 5
    public static  void CheckIsMember(String name , String surName){
        Member__c[] results = [SELECT Name, Member_Surname__c
                                FROM
                                Member__c
                                WHERE Name = :name AND Member_Surname__c = :surName];

        if (results.size() == 0) {
            System.debug('Uye Bulanamadi');  
        } else{
            System.debug('Uye bulundu');
        }
    }

    // Adim 6
    public static List<Member__c> MemberInfo(ID salesForceId) {
      List<Member__c> info = [SELECT name, LastBook__c,Member_Surname__c
                FROM
                    Member__c
                WHERE  id = :salesForceId];
        
        return info;
    }
    
    // Adim 7
    public void CorrectName(String oldName, String newName) {
        Writer__c w = [SELECT Name FROM Writer__c WHERE Name = :oldName ];
        w.Name = newName;
        update w;
    }
}