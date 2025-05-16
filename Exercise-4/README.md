# Aim

To develop a Java Servlet application that handles HTML form data submission and maintains user sessions across multiple pages.

# Procedure

1. Create an HTML form to collect user input (e.g., name and email).
2. Create a servlet to handle the form submission.
3. Use `HttpSession` to store user data.
4. Create another servlet/page to access session data and display it.

---

## HTML Code (`form.html`)

```html
<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
</head>
<body>
    <form action="LoginServlet" method="post">
        Name: <input type="text" name="username"><br>
        Email: <input type="email" name="email"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
```

---

## Java Servlet Code (`LoginServlet.java`)

```java
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String email = request.getParameter("email");

        HttpSession session = request.getSession();
        session.setAttribute("username", name);
        session.setAttribute("email", email);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>Welcome, " + name + "</h2>");
        out.println("<a href='WelcomeServlet'>Go to Welcome Page</a>");
    }
}
```

---

## Second Servlet (`WelcomeServlet.java`)

```java
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class WelcomeServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String name = (String) session.getAttribute("username");
        String email = (String) session.getAttribute("email");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if (name != null) {
            out.println("<h2>Hello " + name + ", your email is " + email + "</h2>");
        } else {
            out.println("<h2>No session data found.</h2>");
        }
    }
}
```

---

## `web.xml` Entry (if not using annotations)

```xml
<web-app>
    <servlet>
        <servlet-name>LoginServlet</servlet-name>
        <servlet-class>LoginServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>LoginServlet</servlet-name>
        <url-pattern>/LoginServlet</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>WelcomeServlet</servlet-name>
        <servlet-class>WelcomeServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>WelcomeServlet</servlet-name>
        <url-pattern>/WelcomeServlet</url-pattern>
    </servlet-mapping>
</web-app>
```