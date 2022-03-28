//$Id$
package com.action;

public class MakeStartPage {
	private String QuestionsBasedOn;

	public String getQuestionsBasedOn() {
		return QuestionsBasedOn;
	}

	public void setQuestionsBasedOn(String questionsBasedOn) {
		QuestionsBasedOn = questionsBasedOn;
	}
	public String execute() {
	    return "success";
	}
}