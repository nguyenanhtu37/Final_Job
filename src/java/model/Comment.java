/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author dinhvu
 */
public class Comment {
    private int IdC;
    private String NameUse;
    private String ContentC;
    private String DateC;
    private String EnterId;
    private String UserId;
    private String JobId;

    public Comment() {
    }

    public Comment(int IdC, String NameUse, String ContentC, String DateC) {
        this.IdC = IdC;
        this.NameUse = NameUse;
        this.ContentC = ContentC;
        this.DateC = DateC;
    }

    public Comment(int IdC, String NameUse, String ContentC, String DateC, String UserId) {
        this.IdC = IdC;
        this.NameUse = NameUse;
        this.ContentC = ContentC;
        this.DateC = DateC;
        this.UserId = UserId;
    }
    public Comment(String NameUse, String ContentC, String DateC, String EnterId,int Idc) {
        
        this.NameUse = NameUse;
        this.ContentC = ContentC;
        this.DateC = DateC;
        this.EnterId = EnterId;
        this.IdC = Idc;
    }
    
    

    
    
    

    public Comment(int IdC, String NameUse, String ContentC, String DateC, String EnterId, String UserId, String JobId) {
        this.IdC = IdC;
        this.NameUse = NameUse;
        this.ContentC = ContentC;
        this.DateC = DateC;
        this.EnterId = EnterId;
        this.UserId = UserId;
        this.JobId = JobId;
    }

    public int getIdC() {
        return IdC;
    }

    public void setIdC(int IdC) {
        this.IdC = IdC;
    }

    public String getNameUse() {
        return NameUse;
    }

    public void setNameUse(String NameUse) {
        this.NameUse = NameUse;
    }

    public String getContentC() {
        return ContentC;
    }

    public void setContentC(String ContentC) {
        this.ContentC = ContentC;
    }

    public String getDateC() {
        return DateC;
    }

    public void setDateC(String DateC) {
        this.DateC = DateC;
    }

    public String getEnterId() {
        return EnterId;
    }

    public void setEnterId(String EnterId) {
        this.EnterId = EnterId;
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String UserId) {
        this.UserId = UserId;
    }

    public String getJobId() {
        return JobId;
    }

    public void setJobId(String JobId) {
        this.JobId = JobId;
    }
    public List getListCommentByJobId(String Id){
        CommentDB commentDB = new CommentDB();
        return commentDB.getComment(Id);
    }
    public List getListCommentEByJobId(String Id){
        CommentDB commentDB = new CommentDB();
        return commentDB.getCommentE(Id);
    }
    
    public List getListCommentAllByJobId(String Id){
        CommentDB commentDB = new CommentDB();
        return commentDB.getComment(Id);
    }

    @Override
    public String toString() {
        return "Comment{" + "IdC=" + IdC + ", NameUse=" + NameUse + ", ContentC=" + ContentC + ", DateC=" + DateC + ", EnterId=" + EnterId + ", UserId=" + UserId + ", JobId=" + JobId + '}';
    }
    
    
}
