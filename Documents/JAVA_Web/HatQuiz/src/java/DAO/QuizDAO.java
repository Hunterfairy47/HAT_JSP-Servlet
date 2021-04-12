/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.management.Query;
import model.Quiz;
import model.Subject;

public class QuizDAO {

    //Lấy tất cả đề thi
    public ArrayList<Quiz> getListQuiz() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "Select * from Quiz";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Quiz> list = new ArrayList<>();
        while (rs.next()) {
            Quiz quiz = new Quiz();
            quiz.setQuizID(rs.getInt("QuizID"));            
            quiz.setQuizName(rs.getString("QuizName"));
            quiz.setTime(rs.getInt("Time"));
            quiz.setTotalQuestion(rs.getInt("TotalQuestion"));
            quiz.setImage(rs.getString("Image"));
            quiz.setCreateDate(rs.getTimestamp("CreateDate"));
            list.add(quiz);
        }
        return list;
    }
    
    // get danh sách đề thi dựa vào mã danh mục
    public ArrayList<Quiz> getListQuizBySubject(int SubjectID) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM quiz WHERE SubjectID = '" + SubjectID + "'";        
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Quiz> list = new ArrayList<>();
        while (rs.next()) {
            Quiz quiz = new Quiz();            
            quiz.setQuizID(rs.getInt("QuizID"));              
            quiz.setQuizName(rs.getString("QuizName"));
            quiz.setTime(rs.getInt("Time"));
            quiz.setTotalQuestion(rs.getInt("TotalQuestion"));
            quiz.setImage(rs.getString("Image"));
            quiz.setCreateDate(rs.getTimestamp("CreateDate"));                    
            list.add(quiz);
        }
        return list;
    }

    

    public static void main(String[] args) throws SQLException {
        QuizDAO dao = new QuizDAO();
//        for (Quiz q : dao.getListQuizBySubject(2)) {
//            System.out.println(q.getQuizID() + " - " + q.getQuizName());
//        } 
        for (Quiz q : dao.getListQuiz()) {
            System.out.println(q.getQuizID() + " - " + q.getQuizName());
        } 
    }
}