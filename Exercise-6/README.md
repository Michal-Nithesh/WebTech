## Student Information using XML, Schema, and XSLT/XSL

### Algorithm

1. Reference the XSL document in the XML document.
2. Create the student information within `<student>` tags and insert the relevant details.
3. Close all opened tags.
4. In the XSL document, create an HTML file to display the student information in a table format.
5. Close the necessary tags.

---

### Program Files

#### `student.xml`
```xml
<?xml version="1.0"?>
<?xml-stylesheet type="text/css" href="student.css"?>
<!DOCTYPE students SYSTEM "student.dtd">
<students>
    <student>
        <sno>801041</sno>
        <sname>S.Soundarapandian</sname>
        <dob>05/08/1991</dob>
        <address>Neyveli</address>
        <m1>80</m1>
        <m2>90</m2>
        <m3>95</m3>
    </student>
    <student>
        <sno>801049</sno>
        <sname>R.Vadivelan</sname>
        <dob>22/07/1990</dob>
        <address>Pondicherry</address>
        <m1>90</m1>
        <m2>95</m2>
        <m3>80</m3>
    </student>
    <student>
        <sno>801037</sno>
        <sname>R.Satheesh</sname>
        <dob>21/01/1991</dob>
        <address>Kanyakumari</address>
        <m1>80</m1>
        <m2>90</m2>
        <m3>95</m3>
    </student>
</students>
```

#### `student.css`
```css
student {
    background-color: #aabbcc;
    width: 100%;
}
sno {
    display: block;
    color: green;
    font-size: 25pt;
}
sname {
    display: block;
    color: black;
    font-size: 20pt;
}
dob, address, m1, m2, m3 {
    display: block;
    color: blue;
    font-size: 15pt;
}
```

#### `student.dtd`
```xml
<?xml version="1.0"?>
<!ELEMENT students (student+)>
<!ELEMENT student (sno, sname, dob, address, m1, m2, m3)>
<!ELEMENT sno (#PCDATA)>
<!ELEMENT sname (#PCDATA)>
<!ELEMENT dob (#PCDATA)>
<!ELEMENT address (#PCDATA)>
<!ELEMENT m1 (#PCDATA)>
<!ELEMENT m2 (#PCDATA)>
<!ELEMENT m3 (#PCDATA)>
```
