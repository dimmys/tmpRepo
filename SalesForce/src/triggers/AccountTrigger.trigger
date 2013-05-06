trigger AccountTrigger on Account ( after insert, after update,
                                    before insert, before update) {
/*    if( Trigger.isBefore ){
        if( Trigger.isInsert ){
            System.debug( LoggingLevel.INFO,'@@@before insert new: ' + Trigger.new );
        }
        if( Trigger.isUpdate ){
            System.debug( LoggingLevel.INFO,'@@@before update new: ' + Trigger.new );
        }
    }
    if( Trigger.isAfter ){
        if( Trigger.isInsert ){
            System.debug( LoggingLevel.INFO,'@@@after insert new: ' + Trigger.new );
        }
        if( Trigger.isUpdate ){
            System.debug( LoggingLevel.INFO,'@@@after update new: ' + Trigger.new );
        }
    }*/
    
    if( Trigger.isBefore ){
        if( Trigger.isInsert ){
        try{
            Trigger.new.remove(0);}catch(Exception e){}
        }
    }
}