/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public class Report {
    private String Enterprise;
    private String ReportedEnterID;
    private String ReportedUserID;
    private String UserID;

    public Report(String Enterprise, String ReportedEnterID, String ReportedUserID, String UserID) {
        this.Enterprise = Enterprise;
        this.ReportedEnterID = ReportedEnterID;
        this.ReportedUserID = ReportedUserID;
        this.UserID = UserID;
    }

    public Report(String Enterprise, String ReportedEnterID) {
        this.Enterprise = Enterprise;
        this.ReportedEnterID = ReportedEnterID;
    }
    
    public Report(int a,String Enterprise, String ReportedUserID) {
        this.Enterprise = Enterprise;
        this.ReportedUserID = ReportedUserID;
    }
    
    

    public String getEnterprise() {
        return Enterprise;
    }

    public void setEnterprise(String Enterprise) {
        this.Enterprise = Enterprise;
    }

    public String getReportedEnterID() {
        return ReportedEnterID;
    }

    public void setReportedEnterID(String ReportedEnterID) {
        this.ReportedEnterID = ReportedEnterID;
    }

    public String getReportedUserID() {
        return ReportedUserID;
    }

    public void setReportedUserID(String ReportedUserID) {
        this.ReportedUserID = ReportedUserID;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }
    
}
