/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author Acer
 */
public class Quiz {
    private Subject subject;
    private int QuizID;
    private int SubjectID;
    private String QuizName;
    private int Time;
    private int TotalQuestion;
    private String Image;
    private Timestamp CreateDate;

    public Quiz(int QuizID, String QuizName, int Time, int TotalQuestion, String Image, Timestamp CreateDate) {
        this.QuizID = QuizID;
        this.QuizName = QuizName;
        this.Time = Time;
        this.TotalQuestion = TotalQuestion;
        this.Image = Image;
        this.CreateDate = CreateDate;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public int getQuizID() {
        return QuizID;
    }

    public void setQuizID(int QuizID) {
        this.QuizID = QuizID;
    }

    public int getSubjectID() {
        return SubjectID;
    }

    public void setSubjectID(int SubjectID) {
        this.SubjectID = SubjectID;
    }

    public String getQuizName() {
        return QuizName;
    }

    public void setQuizName(String QuizName) {
        this.QuizName = QuizName;
    }

    public int getTime() {
        return Time;
    }

    public void setTime(int Time) {
        this.Time = Time;
    }

    public int getTotalQuestion() {
        return TotalQuestion;
    }

    public void setTotalQuestion(int TotalQuestion) {
        this.TotalQuestion = TotalQuestion;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public Timestamp getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(Timestamp CreateDate) {
        this.CreateDate = CreateDate;
    }

    public Quiz() {
    }

}
