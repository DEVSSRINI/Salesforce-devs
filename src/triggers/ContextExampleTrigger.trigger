trigger ContextExampleTrigger on Account (before insert, after insert, after delete) {
    if (Trigger.isInsert) {
        if (Trigger.isBefore) {
            // Process before insert
            System.debug('Trigger.isBefore: Hello World!');
            for(Account a : Trigger.New) { 
                a.Description = 'New description'; 
            } 
        } else if (Trigger.isAfter) {
            // Process after insert
            System.debug('Trigger.isAfter: Hello World!');
        }        
    }
    else if (Trigger.isDelete) {
        // Process after delete
        System.debug('Trigger.isDelete: Hello World!');
    }
}