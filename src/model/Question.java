package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the questions database table.
 * 
 */
@Entity
@Table(name="questions")
public class Question implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String answer1;

	private String answer2;

	private String answer3;

	private String answer4;

	private String question;

	//bi-directional one-to-one association to Answer
	@OneToOne(mappedBy="question")
	private Answer answer;

	public Question() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnswer1() {
		return this.answer1;
	}

	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}

	public String getAnswer2() {
		return this.answer2;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	public String getAnswer3() {
		return this.answer3;
	}

	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}

	public String getAnswer4() {
		return this.answer4;
	}

	public void setAnswer4(String answer4) {
		this.answer4 = answer4;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public Answer getAnswer() {
		return this.answer;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

	
}