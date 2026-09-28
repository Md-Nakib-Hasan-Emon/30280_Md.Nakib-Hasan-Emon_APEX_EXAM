public static void updateContacts(List<Account> accounts) {

    

        Set<Account> acc =  accounts;

        List<Contact> contacts = [
        SELECT Id, AccountId, Description
        FROM Contact
        WHERE AccountId = :acc.Id AND acc.Industry ='Technology'
        ];

        for (Contact con : contacts) {

                con.Description = 'Technology Customer';

        }
         update con;

   
}