trigger OppNameChange on Opportunity (before insert) {
	
    for(Opportunity opp: trigger.new)
    {
        opp.Name = opp.Name + ': Modified';
    }
}