
package Message;

import Item.CommonUtils;
import Item.Item;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MessageDB {
    public List<Message> getMessages() throws SQLException, ClassNotFoundException{
        Connection conn = CommonUtils.getConnection();                               
         String sql = "select subject,message from message";
         PreparedStatement ps=conn.prepareStatement(sql);     
         ResultSet rs=ps.executeQuery();
         List<Message> messagesList=new ArrayList<Message>();
         Message item = null;
         while(rs.next()){
                item = new Message();
                item.setSubject(rs.getString(1));
                item.setMessage(rs.getString(2));
                messagesList.add(item);
            }
        conn.close();
        return messagesList;
    }
}
