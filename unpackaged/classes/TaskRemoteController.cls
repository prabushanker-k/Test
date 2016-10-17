global with sharing class TaskRemoteController {

@RemoteAction
global static String createTask(String username,String taskname,String taskdate,Decimal workedHour,String taskDescription,String taskno) 
{

 String[] output = taskdate.split('\\-');   
 
 string formatteddate = output[1]+'/'+output[2]+'/'+output[0];
 date taskformatteddate = date.parse(formatteddate);
  
    TVA_Support_Tracking__c mytask = new TVA_Support_Tracking__c();
    mytask.User_Name__c = username;
    mytask.Task_Type__c = taskname;
    mytask.Activity_Date__c = taskformatteddate;
    mytask.Effort_Spent_in_Hours__c = workedHour;
    mytask.Description__c = taskDescription;
    mytask.SR_Incendent_No__c= taskno;
    
    insert mytask;
    
 return mytask.Name;
}

}