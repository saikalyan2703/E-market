
import User.User;
import Item.ItemDB;
import Item.Item;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet(urlPatterns={"/ItemControl"})
@MultipartConfig(maxFileSize = 16177215)
public class ItemControl extends HttpServlet {
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doPost(request,response);
         
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String url = "";
        String action = request.getParameter("action");
        Item item;
        User user;
        ItemDB itemdb = new ItemDB();
       System.out.println(action);
        
        if("additem".equals(action)  || "additem"==action){
            
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String type = request.getParameter("type");
            int price = Integer.parseInt(request.getParameter("price"));
            InputStream inputStream = null;
            
            Part filePart = request.getPart("picture");
            System.out.println(filePart);
            inputStream = filePart.getInputStream();
            
             user = (User) request.getSession().getAttribute("user");
             int user_id = Integer.parseInt(user.getUser_id());
            try {
                itemdb.insertItem(name, description, price, type, inputStream, user_id);
                url="/add_item.jsp";
                request.setAttribute("message","Item added succesfully");
            }
            catch (ClassNotFoundException ex) {
                Logger.getLogger(ItemControl.class.getName()).log(Level.SEVERE, null, ex);
                url="/add_item.jsp";
                request.setAttribute("message","Item not added");
            }
             catch (SQLException ex) {
                Logger.getLogger(ItemControl.class.getName()).log(Level.SEVERE, null, ex);
                url="/add_item.jsp";
                request.setAttribute("message","Item not added");
            } 
             
                
        }
        else if("updateItemStatus".equals(action) || "updateItemStatus"==action){
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                user =(User) request.getSession().getAttribute("user");
                int user_id = Integer.parseInt(user.getUser_id());
                itemdb.updateItemStatus(id,user_id);
                url="/settings.jsp";
            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(ItemController.class.getName()).log(Level.SEVERE, null, ex);
            }
            
    }
        
        else if(action.equals("removeItem")  || "removeItem"==action){
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                itemdb.removeItemFromCart(id);
                url="/cart.jsp";
            } catch (SQLException ex) {
                Logger.getLogger(ItemControl.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(ItemControl.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
     
        else if(action.equals("deleteItem")  || "deleteItem"==action){
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                itemdb.deleteItem(id);
                url="/items.jsp";
            } catch (SQLException ex) {
                Logger.getLogger(ItemControl.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(ItemControl.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
        
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }
    
}
