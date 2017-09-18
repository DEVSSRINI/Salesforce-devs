public class AccountHandler {
    
    public static Account insertNewAccount(string strInput)
    {
        Account objAct = new Account(Name = strInput, Phone='(415)555-1212');
        
        try
        {
            insert objAct;
        }
        catch(exception ex)
        {
            //ex.getMessage();
            objAct = null;
        }
        
        return objAct;
    }

}