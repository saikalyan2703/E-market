
package Message;

public class Message {
    private String subject, message;

    public Message(String subject, String message) {
        this.subject = subject;
        this.message = message;
    }
    
    public Message() {
        subject = "";
        message = "";
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
