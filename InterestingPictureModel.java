import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import javax.net.ssl.HttpsURLConnection;




import sun.net.*;
public class InterestingPictureModel {
	
    private String pictureTag;
    private String pictureURL;
    
    String response;
    
    public void doFlickrSearch(String searchTag) {
    	pictureTag = searchTag;
        response = "";
        
        try {
            
            // Create a URL for the desired page            
            URL url = new URL("http://thisisindexed.com/category/"+searchTag);
            // Create an HttpURLConnection.  This is useful for setting headers.
             URLConnection connection=url.openConnection();
            // Read all the text returned by the server
            //System.out.println(connection.getContent());
            BufferedReader in = new BufferedReader
                    (new InputStreamReader(connection.getInputStream(), "UTF-8"));
            String str;
            
            System.out.println(connection.getContentLength());
            
            while ((str = in.readLine()) != null) {
                // str is one line of text readLine() strips newline characters
                response += str;  
            }
            in.close();
           
        } catch (IOException e) {

        } 
        
        int random = (int)( Math.random()*10000);
        int startfarm = response.indexOf("http://thisisindexed.com/wp-content/uploads/201", 5000+random);
 
        // only start looking after the quote before http
        int endfarm = response.indexOf("\"",startfarm + 5);
        // only start looking after the quote before http
        // +1 to include the quote
        pictureURL = "src=\""+ response.substring(startfarm, endfarm+1);  
       
    }
    
       	public String getMobileURL() {
        	 int start ;
        	 int startfrom;
        	 int endfrom;
        	 int random =(int)(Math.random()*15000);
         
        	 start = response.indexOf("alignnone size-medium wp-image",random);   
        	 startfrom = response.indexOf("src=\"http://thisisindexed.com/wp-content/uploads/", start+5);
        	 endfrom = response.indexOf("\"",startfrom+5);
        	 pictureURL = response.substring(startfrom, endfrom+1);
        	 return pictureURL;
         }
   
    public String getWebPic(){
         return pictureURL;
      }

    public String getPictureTag() {
        return pictureTag;
    }
}
