trigger ContactTrigger on Contact ( before insert, after insert,
                                    before update, after update,
                                    before delete, after delete,
                                    after undelete ) {
    if( Trigger.isBefore ){
        if( Trigger.isInsert ){
            System.debug( LoggingLevel.INFO,'@@@before insert new: ' + Trigger.new );
            System.debug( LoggingLevel.INFO,'@@@before insert newMap: ' + Trigger.newMap );
            System.debug( LoggingLevel.INFO,'@@@before insert old: ' + Trigger.old );
            System.debug( LoggingLevel.INFO,'@@@before insert oldMap: ' + Trigger.oldMap );
        }
        if( Trigger.isUpdate ){
            System.debug( LoggingLevel.INFO,'@@@before update new: ' + Trigger.new );
            System.debug( LoggingLevel.INFO,'@@@before update newMap: ' + Trigger.newMap );
            System.debug( LoggingLevel.INFO,'@@@before update old: ' + Trigger.old );
            System.debug( LoggingLevel.INFO,'@@@before update oldMap: ' + Trigger.oldMap );
        }
        if( Trigger.isDelete ){
            System.debug( LoggingLevel.INFO,'@@@before delete new: ' + Trigger.new );
            System.debug( LoggingLevel.INFO,'@@@before delete newMap: ' + Trigger.newMap );
            System.debug( LoggingLevel.INFO,'@@@before delete old: ' + Trigger.old );
            System.debug( LoggingLevel.INFO,'@@@before delete oldMap: ' + Trigger.oldMap );
        }
    }
    if( Trigger.isAfter ){
        if( Trigger.isInsert ){
            System.debug( LoggingLevel.INFO,'@@@after insert new: ' + Trigger.new );
            System.debug( LoggingLevel.INFO,'@@@after insert newMap: ' + Trigger.newMap );
            System.debug( LoggingLevel.INFO,'@@@after insert old: ' + Trigger.old );
            System.debug( LoggingLevel.INFO,'@@@after insert oldMap: ' + Trigger.oldMap );
        }
        if( Trigger.isUpdate ){
            System.debug( LoggingLevel.INFO,'@@@after update new: ' + Trigger.new );
            System.debug( LoggingLevel.INFO,'@@@after update newMap: ' + Trigger.newMap );
            System.debug( LoggingLevel.INFO,'@@@after update old: ' + Trigger.old );
            System.debug( LoggingLevel.INFO,'@@@after update oldMap: ' + Trigger.oldMap );
        }
        if( Trigger.isDelete ){
            System.debug( LoggingLevel.INFO,'@@@after delete new: ' + Trigger.new );
            System.debug( LoggingLevel.INFO,'@@@after delete newMap: ' + Trigger.newMap );
            System.debug( LoggingLevel.INFO,'@@@after delete old: ' + Trigger.old );
            System.debug( LoggingLevel.INFO,'@@@after delete oldMap: ' + Trigger.oldMap );
        }
        if( Trigger.isUnDelete ){
            System.debug( LoggingLevel.INFO,'@@@after undelete new: ' + Trigger.new );
            System.debug( LoggingLevel.INFO,'@@@after undelete newMap: ' + Trigger.newMap );
            System.debug( LoggingLevel.INFO,'@@@after undelete old: ' + Trigger.old );
            System.debug( LoggingLevel.INFO,'@@@after undelete oldMap: ' + Trigger.oldMap );
        }
    }
}