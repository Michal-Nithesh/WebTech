# Online Examination System - Java Servlet

## AIM:
To write a Java servlet program that conducts an online examination and displays student marks stored in a database.

## ALGORITHM:
1. Create an HTML file with a form.
2. The form's `action` attribute points to the servlet (`exam`).
3. Define a form with text boxes for the name and seat number.
4. Include five true/false questions in the form.
5. Use JDBC to connect to the database and insert results.
6. Display the results and mark whether the student has passed or failed.

## SIMPLIFIED PROGRAM:

### `index.jsp` - Entry Form for Exam

```html
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Online Examination</title>
</head>
<body>
    Welcome to Online Examination!!!!
    <form action="exam" method="get">
        <label>
            Enter Your name Please!!
            <input type="text" name="name"/>
            <br/>
            <input type="submit" name="SUBMIT"/>
        </label>
    </form>
</body>
</html>
```

### `exam.java` - Servlet to Display the Exam Form

```java
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class exam extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");

        out.println("<html>");
        out.println("<head><title>Online Examination</title></head>");
        out.println("<body bgcolor=PINK>");
        out.println("<h2 align=center>Online Examination</h2><hr>");
        out.println("<h3 align=center>Welcome " + name + "</h3><hr>");
        out.println("<form method='get' action='exam2'>");
        
        // Questions
        out.println("<p>1. Operating System is a </p>");
        out.println("<input type='radio' name='q1' value='0'> Hardware");
        out.println("<input type='radio' name='q1' value='1'> Software");

        out.println("<p>2. Developer of C Language is </p>");
        out.println("<input type='radio' name='q2' value='0'> Dennis Ritchie");
        out.println("<input type='radio' name='q2' value='1'> James Thompson");

        out.println("<p>3. Which OS is multitasking, multiuser, and multiprocessing?</p>");
        out.println("<input type='radio' name='q3' value='0'> MS DOS");
        out.println("<input type='radio' name='q3' value='1'> Windows NT");

        out.println("<p>4. Father of Computers is </p>");
        out.println("<input type='radio' name='q4' value='1'> Charles Babbage");
        out.println("<input type='radio' name='q4' value='0'> Charles Dickson");

        out.println("<p>5. What is the current generation of computers?</p>");
        out.println("<input type='radio' name='q5' value='0'> Fifth");
        out.println("<input type='radio' name='q5' value='1'> Sixth");

        out.println("<input type='submit' value='Done'/>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }
}
```

### `exam2.java` - Servlet to Calculate and Display the Results

```java
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class exam2 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int count = 0;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get the answers
        String q1 = request.getParameter("q1");
        String q2 = request.getParameter("q2");
        String q3 = request.getParameter("q3");
        String q4 = request.getParameter("q4");
        String q5 = request.getParameter("q5");

        // Correct answers
        if (q1.equals("1")) count++;
        if (q2.equals("1")) count++;
        if (q3.equals("1")) count++;
        if (q4.equals("1")) count++;
        if (q5.equals("1")) count++;

        // Display result
        out.println("<html>");
        out.println("<head><title>Examination Results</title></head>");
        out.println("<body>");
        out.println("<h2 align=center>Online Examination</h2><hr>");
        out.println("<h3>Number of Questions answered correctly: " + count + "</h3>");
        
        if (count >= 3) {
            out.println("<h3>Congrats!!! You Have Passed!!!</h3>");
        } else {
            out.println("<h3>Sorry!!! You Have Failed!!!</h3>");
        }

        out.println("</body>");
        out.println("</html>");
    }
}
```