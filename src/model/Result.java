package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the results database table.
 * 
 */
@Entity
@Table(name="results")
public class Result implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int resultID;

	private String answerID;

	private String questionID;

	private String testID;

	private int timeTaken;

	private String userID;

	public Result() {
	}

	public int getResultID() {
		return this.resultID;
	}

	public void setResultID(int resultID) {
		this.resultID = resultID;
	}

	public String getAnswerID() {
		return this.answerID;
	}

	public void setAnswerID(String answerID) {
		this.answerID = answerID;
	}

	public String getQuestionID() {
		return this.questionID;
	}

	public void setQuestionID(String questionID) {
		this.questionID = questionID;
	}

	public String getTestID() {
		return this.testID;
	}

	public void setTestID(String testID) {
		this.testID = testID;
	}

	public int getTimeTaken() {
		return this.timeTaken;
	}

	public void setTimeTaken(int timeTaken) {
		this.timeTaken = timeTaken;
	}

	public String getUserID() {
		return this.userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

}