/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dinhv
 */
public class CommentDB {
    ResultSet rs =null;
    public List<Comment> getComment(String idJob){
        List<Comment> res = new ArrayList<>();
            try (Connection con = DatabaseInfo.getConnect()) {
                    String sql = "	select c.id, u.FullName , c.des, c.Date, c.UserID  from Comment c, Users u where c.UserID = u.UserID and c.JobID =? order by c.id desc";
                                         //int IdC, String NameUse, String ContentC, String DateC, String UserId
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, idJob);
            rs = ps.executeQuery();
            while (rs.next()) {
                //String fullName, String postId, String descrip
//                String IdC, String NameUse, String ContentC, String DateC, String EnterId, String UserId, String JobId
//                                           int IdC, String NameUse, String ContentC, String DateC, String UserId

                Comment commet = new Comment(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
                res.add(commet);
                System.out.println(commet.toString());
                
//                res.add(new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6), rs.getString(7), rs.getString(8)));
            }
            System.out.println(res.size()+"size");
        
        return res;
        } catch (Exception e) {
            
        }  
        return null;
    }
    
    public void  comment (String idU, String jodID , String des){
    String query ="	INSERT INTO Comment (UserID, JobID, des, date) VALUES (?, ?, ?, GETDATE());";
        System.out.println("query: "+idU+jodID+des);
        try  (Connection con = DatabaseInfo.getConnect()){
          PreparedStatement   ps = con.prepareStatement(query);
          ps.setString(1, idU);
          ps.setString(2, jodID);
          ps.setString(3, des);
          ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void enterComment(String idE, String jobId,String des){
        String query ="INSERT INTO Comment (EId, JobID, des, date) VALUES (?, ?, ?, GETDATE());";
        try  (Connection con = DatabaseInfo.getConnect()){
          PreparedStatement   ps = con.prepareStatement(query);
          ps.setString(1, idE);
          ps.setString(2, jobId);
          ps.setString(3, des);
          ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void delete(String id){
        String query = "delete from Comment where ID = ?;";
         try(Connection con = DatabaseInfo.getConnect()){
             PreparedStatement   ps = con.prepareStatement(query);
             ps.setString(1, id);
             ps.executeUpdate();
         }   catch(Exception e){
            e.printStackTrace();
        }
    }
    public void update(String id, String des){
        String query = "	update Comment set des = ? where id = ?";
         try(Connection con = DatabaseInfo.getConnect()){
             PreparedStatement   ps = con.prepareStatement(query);
             ps.setString(1, des);
             ps.setString(2, id);
             ps.executeUpdate();
         }   catch(Exception e){
            e.printStackTrace();
        }
    }
    public List<Comment> getCommentE(String idJob){
        List<Comment> res = new ArrayList<>();
            try (Connection con = DatabaseInfo.getConnect()) {
                System.out.println("");
                    String sql = "select c.id, e.EnterpriseName , c.des, c.Date, c.EId  from Comment c, Enterprise e where c.EId = e.EnterpriseID and c.JobID =? order by c.id desc";
                                             //int IdC, String NameUse, String ContentC, String DateC, String EnterId    
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,idJob);
            rs = ps.executeQuery();
            while (rs.next()) {
                //String fullName, String postId, String descrip
//                String IdC, String NameUse, String ContentC, String DateC, String EnterId, String UserId, String JobId
//                                           int IdC, String NameUse, String ContentC, String DateC, String UserId

                Comment commet = new Comment(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(1));
                res.add(commet);
                System.out.println("enter"+commet.toString());
                
//                res.add(new Job(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6), rs.getString(7), rs.getString(8)));
            }
            System.out.println(res.size()+"size");
        
        return res;
        } catch (Exception e) {
            
        }  
        return null;
    }
}
