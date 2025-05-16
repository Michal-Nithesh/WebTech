# Web Page with Image Map: India Map

## AIM:
To create a web page with the following:
- Embed an image map in a web page.
- Fix the hot spots on the map.
- Show related information when the hot spots are clicked.

## ALGORITHM:
1. Create an HTML file with a `<map>` tag.
2. Set the `src` attribute of the `<img>` tag to the location of the image and also set the `usemap` attribute.
3. Specify an `<area>` with a name, shape, and `href` set to the appropriate value.
4. Repeat step 3 for as many hot spots as you want on the map.
5. Create HTML files for each hotspot that displays information when the user clicks on a particular location.

## PROGRAM:

### `mapping.html` (Main Map Page)
```html
<html>
<head>
  <title>India Map</title>
</head>
<body bgcolor="PINK">
  <font face="Monotype Corsiva" color="BLUE" size="6">
    <marquee direction="left" behavior="alternate">INDIA MAP</marquee>
  </font>
  <hr size="6" color="RED">
  
  <map name="pagemap">
    <area shape="rect" coords="194,151,247,219" href="map1.html">
    <area shape="rect" coords="291,268,384,337" href="map2.html">
    <area shape="rect" coords="100,337,197,384" href="map3.html">
    <area shape="rect" coords="236,543,344,577" href="map4.html">
  </map>
  
  <img src="india.bmp" usemap="#pagemap">
  
  <font color="#ff0000" size="5">
    <p><b>Hints:</b><i>Click on the Name of the Cities in the map to know its description</i></p>
  </font>
</body>
</html>
```

### `map1.html` (Delhi Information)
```html
<html>
<body bgcolor="SKYBLUE">
  <font face="Monotype Corsiva" size="18" color="RED">
    <center><b><i><tt>Delhi is the capital of our INDIA<br> and <br>More IT companies are camped at Delhi</tt></i></b></center>
    <a href="mapping.html">Home Page</a>
  </font>
</body>
</html>
```

### `map2.html` (Calcutta Information)
```html
<html>
<body bgcolor="SKYBLUE">
  <font face="Times New Roman" size="18" color="RED">
    <center><b><i>Calcutta is the wealthy city in WEST BENGAL<br> and <br>it has Famous "Sunderbans Forests"</i></b></center>
    <a href="mapping.html">Home Page</a>
  </font>
</body>
</html>
```

### `map3.html` (Mumbai Information)
```html
<html>
<body bgcolor="DARKGREEN">
  <font face="Times New Roman" size="12" color="RED">
    <center>MUMBAI is the capital of Maharashtra<br> and <br>it has Famous India Gate</center>
    <a href="mapping.html">Home Page</a>
  </font>
</body>
</html>
```

### `map4.html` (Chennai Information)
```html
<html>
<body bgcolor="BLACK">
  <font face="Times New Roman" size="12" color="RED">
    <center>Chennai is the capital of Tamil Nadu<br> and <br>More IT companies are camped at Chennai</center>
    <a href="mapping.html">Home Page</a>
  </font>
</body>
</html>
```

## RESULT: 
    Thus creation of an webpage using cascading style sheet has been developed successfully.