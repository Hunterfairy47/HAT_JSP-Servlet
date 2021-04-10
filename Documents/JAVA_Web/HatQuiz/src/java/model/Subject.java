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
public class Subject {
    private int SubjectID;
    private String SubjectName;
    private String Icon;
    private String Description;
    private Timestamp CreateDate;
    
    public Subject(){
    }
    public Subject(int SubjectID, String SubjectName, String Icon, String Description, Timestamp CreateDate){
        this.SubjectID = SubjectID;
        this.SubjectName = SubjectName;
        this.Icon = Icon;
        this.Description = Description;
        this.CreateDate = CreateDate;
    }

    public int getSubjectID() {
        return SubjectID;
    }

    public void setSubjectID(int SubjectID) {
        this.SubjectID = SubjectID;
    }

    public String getSubjectName() {
        return SubjectName;
    }

    public void setSubjectName(String SubjectName) {
        this.SubjectName = SubjectName;
    }

    public String getIcon() {
        return Icon;
    }

    public void setIcon(String Icon) {
        this.Icon = Icon;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public Timestamp getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(Timestamp CreateDate) {
        this.CreateDate = CreateDate;
    }
    
    
}
