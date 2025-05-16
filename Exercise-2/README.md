# Web Page with Embedded Style Sheet

## AIM:
To create a webpage with an embedded style sheet using HTML.

## ALGORITHM:
1. Create an HTML file with the `<style>` tag, inside the `<head>` tag.
2. Set styles for headings (`h1`, `h2`, ... `h6`) such as `font-family`, `font-size`, `color`, `left`, etc.
3. Close the `<head>` tag.
4. Specify the required headings and information inside the `<body>` tag.
5. Close the opened tags.

## PROGRAM:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>All Types of CSS</title>

  <!-- Internal CSS (within <style> tag) -->
  <style>
    /* Internal CSS */
    h1 {
      color: blue;
      font-family: Arial, sans-serif;
      text-align: center;
    }
    p {
      color: green;
      font-size: 16px;
    }
    .internal-class {
      background-color: lightgray;
      padding: 10px;
    }
  </style>
  
  <!-- External CSS (link to external CSS file) -->
  <link rel="stylesheet" href="styles.css">
</head>
<body>

  <!-- Inline CSS (directly in HTML element) -->
  <h1 style="color: red; text-decoration: underline;">Welcome to CSS Demo</h1>

  <!-- Inline CSS Example -->
  <p style="color: purple; font-size: 18px;">This paragraph uses inline CSS for its styling.</p>

  <!-- Internal CSS Example -->
  <div class="internal-class">
    <h2>Internal CSS Example</h2>
    </div>

    <!-- External CSS Example (used from styles.css file) -->
    <div class="external-class">
        <h2>External CSS Example</h2>
        <p>This section is styled using an external CSS file.</p>
    </div>

</body>
</html>
```

```css
.external-class {
  background-color: yellow;
  padding: 15px;
}
```

## RESULT:
Thus creation of an webpage using cascading style sheet has beendeveloped successfully.