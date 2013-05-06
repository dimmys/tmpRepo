public with sharing class IsIdsObjectTypeEqualToStringObjectType {
	public static Boolean isIdsObjectTypeEqualToStringObjectType( String objectIdString,
                                                              String objectTypeNameString ){
		Boolean isEqual = false;
		
		if( Id.valueOf( objectIdString ).getSObjectType().getDescribe().getName().equals( objectTypeNameString ) )
			isEqual = true;
		
		return isEqual;
	}
	
	@isTest( seeAllData = false ) private static void testIsIdsObjectTypeEqualToStringObjectType(){
	    Integer NUMBER_TO_INSERT = 5;
	    List<Account> testAccountList = new List<Account>();
	    List<Boolean> testEqualsList = new List<Boolean>();
	    List<Boolean> testNotEqualsList = new List<Boolean>();
	    String accountObjectType = Account.getsObjectType().getDescribe().getName();
	    
	    for( Integer i = 0; NUMBER_TO_INSERT > i; i++ )
	        testAccountList.add( new Account( Name = 'Test' + 1) );
	        
	    insert testAccountList;
	    
	    Test.startTest();
	        for(Account accountItem : testAccountList)
	            testEqualsList.add( isIdsObjectTypeEqualToStringObjectType((String)accountItem.Id, accountObjectType));
	        
	        for(Account accountItem : testAccountList)
	            testNotEqualsList.add(isIdsObjectTypeEqualToStringObjectType((String)accountItem.Id, 'Account__c'));
	    Test.stopTest();
	    
	    for(Boolean testEqualsItem : testEqualsList)
	        System.assertEquals(true, testEqualsItem);
	    
	    for(Boolean testNotEqualsItem : testNotEqualsList)
	        System.assertEquals(false, testNotEqualsItem);
	}
}