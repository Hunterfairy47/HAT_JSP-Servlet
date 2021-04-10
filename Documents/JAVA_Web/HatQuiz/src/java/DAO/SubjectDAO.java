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
import model.Subject;

public class SubjectDAO {
    // get danh sách môn học    

    public ArrayList<Subject> getListSubject() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "Select * from Subject";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Subject> list = new ArrayList<>();
        while (rs.next()) {
            Subject subject = new Subject();
            subject.setSubjectID(rs.getInt("SubjectID"));
            subject.setSubjectName(rs.getString("SubjectName"));
            subject.setIcon(rs.getString("Icon"));
            subject.setDescription(rs.getString("Description"));
            subject.setCreateDate(rs.getTimestamp("CreateDate"));
            list.add(subject);
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        SubjectDAO dao = new SubjectDAO();;
        for (Subject ds : dao.getListSubject()) {
            System.out.println(ds.getSubjectID() + " - " + ds.getSubjectName() + "-" + ds.getIcon() + "-" + ds.getDescription() + "-" + ds.getCreateDate());
        }
    }
}
