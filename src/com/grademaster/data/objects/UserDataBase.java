package com.grademaster.data.objects;

import java.util.ArrayList;

public class UserDataBase extends DataBase {
	public UserDataBase (ArrayList<Object> users) {
		super(users);
	}
	public UserDataBase () {
		this(new ArrayList<Object>());
	}
	
}