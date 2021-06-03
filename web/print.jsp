<%-- 
    Document   : print
    Created on : Apr 28, 2021, 11:26:04 AM
    Author     : Kothari
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.util.*, java.io.*,java.net.*,com.itextpdf.kernel.*,com.itextpdf.html2pdf.HtmlConverter,com.itextpdf.html2pdf.ConverterProperties" %>
        <%

        File htmlSource = new File("D:\\COLLEGE\\Hackathons\\HACK 5.0\\Resume Builder Java\\images\\template1.html");
        File pdfDest = new File("C:/output.pdf");
        String a = "http://localhost:8080/Resume_Builder/index.jsp";
        URL url = new URL(a);
            URLConnection conn = url.openConnection();

            // open the stream and put it into BufferedReader
            BufferedReader br = new BufferedReader(
                               new InputStreamReader(conn.getInputStream()));
            StringBuilder sb = new StringBuilder();

            String inputLine;
            while ((inputLine = br.readLine()) != null) {
                    sb.append(inputLine);
                    System.out.println(inputLine);
                    
            }
            

            System.out.println("Done");
        ConverterProperties converterProperties = new ConverterProperties();
        HtmlConverter.convertToPdf(new FileInputStream(htmlSource), 
        new FileOutputStream(pdfDest), converterProperties);

        %>
        
    </body>
</html>