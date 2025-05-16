# Web Form Validation Using DHTML

## AIM:
To develop a program for validating a web form control using DHTML (Dynamic HTML).

## ALGORITHM:
1. Define the title within the `<head>` tag.
2. Use the `<script>` tag to define JavaScript functions for validation.
3. Validate each form input using conditions and messages if validation fails.
4. Show appropriate messages and prevent form submission if validation fails.
5. If all fields are valid, display a success message.

## SIMPLIFIED PROGRAM:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form Validator</title>
  <script type="text/javascript">
    function formValidator() {
      var firstname = document.getElementById('firstname');
      var lastname = document.getElementById('lastname');
      var email = document.getElementById('email');
      var password = document.getElementById('password');

      if (isAlphabet(firstname, "Please enter only letters for your First name")) {
        if (isAlphabet(lastname, "Please enter only letters for your Last name")) {
          if (isEmailValid(email, "Please enter a valid email address")) {
            if (isPasswordValid(password, "Password should be alphanumeric")) {
              alert("Form submitted successfully!");
              return true;
            }
          }
        }
      }
      return false;
    }

    function isAlphabet(elem, msg) {
      var alphaExp = /^[a-zA-Z]+$/;
      if (!elem.value.match(alphaExp)) {
        alert(msg);
        elem.focus();
        return false;
      }
      return true;
    }

    function isEmailValid(elem, msg) {
      var emailExp = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
      if (!elem.value.match(emailExp)) {
        alert(msg);
        elem.focus();
        return false;
      }
      return true;
    }

    function isPasswordValid(elem, msg) {
      var passwordExp = /^[a-zA-Z0-9]+$/;
      if (!elem.value.match(passwordExp)) {
        alert(msg);
        elem.focus();
        return false;
      }
      return true;
    }
  </script>
</head>

<body bgcolor="LIGHTGREEN">
  <h1 style="text-align: center; color: #347235;">Please Enter Your Details</h1>
  <hr>
  
  <form onsubmit="return formValidator()">
    <table align="center" border="1" cellpadding="10">
      <tr>
        <td><b>First Name:</b></td>
        <td><input type="text" id="firstname" /></td>
      </tr>
      <tr>
        <td><b>Last Name:</b></td>
        <td><input type="text" id="lastname" /></td>
      </tr>
      <tr>
        <td><b>Email:</b></td>
        <td><input type="text" id="email" /></td>
      </tr>
      <tr>
        <td><b>Password:</b></td>
        <td><input type="password" id="password" /></td>
      </tr>
      <tr>
        <td colspan="2" style="text-align: center;">
          <input type="submit" value="Submit" />
        </td>
      </tr>
    </table>
  </form>
</body>
</html>
```

## RESULT:
Thus developing client side scripts for validating web from controls usingDHTML has been verified.