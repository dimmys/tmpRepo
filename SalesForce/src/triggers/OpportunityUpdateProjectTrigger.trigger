trigger OpportunityUpdateProjectTrigger on Opportunity ( after insert ) {
 List< Project__c> createProjectList = new List<project__c>();
   
  for( Opportunity opportunityItem : trigger.new )
   createProjectList.add( new Project__c( Name = opportunityItem.Name,
                                          Opportunity__c = opportunityItem.Id ) );
   
if ( !createProjectList.isEmpty() ){
  try{
   insert createProjectList;
  } catch( DMLException dmlEx ){
   // Crete new list of Projects to insert and fill it from old one
   List<Project__c> validProjectsToInsert = createProjectList;
   
   for( Integer i = 0; i < dmlEx.getNumDml(); i++ ){
    String errorMessage = 'Error on creation of Project: ' + dmlEx.getDmlMessage( i );
    trigger.newMap.get ( createProjectList[ dmlEx.getDmlIndex( i ) ].Opportunity__c ).addError(errorMessage);
	
	// Remove failed one
	validProjectsToInsert.remove( dmlEx.getDmlIndex( i ) );
   }
   
   // And final insert of valid
   insert validProjectsToInsert;
  }
 }
}