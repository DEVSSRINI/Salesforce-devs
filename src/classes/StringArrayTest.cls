public class StringArrayTest {
    public static List<string> generateStringArray(integer arrLen)
    {
        List<string> lstStr = new List<string>();
        for(integer i = 0; i < arrLen; i++)
        {
            lstStr.add('Test ' + i.format());
        }
        
        return lstStr;
    }
}