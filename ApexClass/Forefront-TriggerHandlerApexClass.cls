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
	*	 Boolean wasAfterUpdate will be changed to true in the handleAfterUpdate method, default is false.
	*	 Method clearFlags will reset wasAfterUpdate to false and reset count for future checks.
	*	 Method handleAfterUpdate will check for recursion, incrememnts count by 1.
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
	private static Boolean wasAfterUpdate = false;
	//private static Integer count = 1;

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

	public static void handleAfterUpdateMap(Map<Id, {{ object_name }}> oldMap, Map<Id, {{ object_name }}> newMap){
		//Recursive trigger execution check
		if(wasAfterUpdate)
		{
			return;
		}
		else 
		{
			wasAfterUpdate = true;
		}
		//Increments count
		//count++;

		//Iterate over keySets in new map
		for(Id eachKeySetID : newMap.keySet()) 
		{
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

	//Resets flags due to recursive trigger execution
	public static void clearFlags(){
		wasAfterUpdate = false;
		//count = 1;
	}
}
