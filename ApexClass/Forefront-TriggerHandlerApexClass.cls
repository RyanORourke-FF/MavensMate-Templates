/**
	* Copyright (c) 2017 ForeFront, Inc. All Rights Reserved.
	* Subject to ForeFront, Inc. licensing.
	*
	* @author UserName/Forefront
	* @version 1.0
	* @description
	*
	* PURPOSE
	* 
	*    Some Detailed Purpose of the Class, what it does and why. 
	*    Helpful hints for the next developer.
	*    Business logic or use cases can be used.
	*
	* RECURSION CHECK
	*
	*	 Records that have been updated will be added to the recursiveRecordsSet Set of IDs
	*  	 Will prevent recusive updates on the same record
	*  	 clearRecursiveRecordsSet method allows you to manually clear the recursiveRecordsSet Set
	* 
	* TEST CLASS 
	* 
	*    Name of the test class
	*    For Naming use the class {{ api_name }}_TEST
	*  
	* ENTRY POINTS 
	*  
	*    How is this code called, if a VF controller which page calls it.  
	* 
	* CHANGE LOG 
	* 
	*    [Version; Date; Author; Description]
	*    v1.0; Date;  UserName/Forefront; Initial Build
	* 
**/
public without sharing class {{ api_name }} {
	
	private static Set<ID> recursiveRecordsSet = new Set<ID>();

	public static void handleBeforeInsert(List<{{ object_name }}> newList){
		//Iterate over records in new list
		for({{ object_name }} eachRecord : newList)
    	{

    	}
	}

	public static void handleAfterInsert(Map<Id, {{ object_name }}> newMap){
		//Iterate over values in new map
		for({{ object_name }} eachValue : newMap.values()) 
		{

		}
	}

	public static void handleBeforeUpdate(Map<Id, {{ object_name }}> oldMap, Map<Id, {{ object_name }}> newMap){
		//Iterate over keySets in new map
		for(Id eachKeySetID : newMap.keySet())
		{
			{{ object_name }} newRecord = newMap.get(eachKeySetID);
			{{ object_name }} oldRecord = oldMap.get(eachKeySetID);
		}
	}

	public static void handleAfterUpdate(Map<Id, {{ object_name }}> oldMap, Map<Id, {{ object_name }}> newMap){

		//Iterate over keySets in new map
		for(Id eachKeySetID : newMap.keySet()) 
		{
			//Recursive trigger execution check
			if(recursiveRecordsSet.contains(eachKeySetID)){continue;}
			recursiveRecordsSet.add(eachKeySetID);

			{{ object_name }} newRecord = newMap.get(eachKeySetID);
			{{ object_name }} oldRecord = oldMap.get(eachKeySetID);
		}
	}

	public static void handleBeforeDelete(Map<Id, {{ object_name }}> oldMap){
		//Iterate over values in old map
		for({{ object_name }} eachValue : oldMap.values())
		{

		}
	}

	public static void handleAfterDelete(Map<Id, {{ object_name }}> oldMap){
		//Iterate over values in old map
		for({{ object_name }} eachValue : oldMap.values())
		{

		}
	}

	//Clears IDs in recursiveRecordsSet that were added due to recursive trigger execution
	/*public static void clearRecursiveRecordsSet(){
		updatedRecordsSet.clear();
	}*/
}