package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the answers database table.
 * 
 */
@Entity
@Table(name="answers")
public class Answer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="question_id")
	private int questionId;

	private String answer;

	//bi-directional one-to-one association to Question
	@OneToOne
	private Question question;

	public Answer() {
	}

	public int getQuestionId() {
		return this.questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Question getQuestion() {
		return this.question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	
}