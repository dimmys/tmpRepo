public class LoggingServices{
	private final static Integer loggingStringMaxSize = ;
	
	private final static LoggingCustomSettings__c loggingCustomSettings = LoggingCustomSettings__c.getInstance('Default');
	
	private static Logging__c currectLogging;
	// TODO move to Custom Settings
	private static String tabString = '  ';
	private static String nextLineString = '\n';
	
	private static String loggingString;
	
	private static List<Logging__c> loggingList = new List<Logging__c>();
	
	/*
	 * Public methods
	 */
	
	public static void startLog( Sobject objectToLog ){    	
		if( currectLogging == null ){
			createLog();
			loggingString = Datetime.now().format( loggingCustomSettings.LogDatetimeFormat__c ) + tabString + loggingCustomSettings.LogField_Start__c + nextLineString;
		}
		
		loggingObject = objectToLog;
        logging = true;
        debugLogString = ''; // Start debug on ' + loggingObject.getSObjectType() + ' object: \n
    }
	
	/*
	 * Private methods
	 */
	 
	private static void createLog(){
    	currectLogging = new Logging__c( Name = Datetime.now().format( loggingCustomSettings.LogDatetimeFormat__c ) );
    }
}

// String max 6 mb