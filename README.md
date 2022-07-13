# Using XSLT for hl7v2 xml to JSON

### General
- Has 4 files: ADT01-28.hl7, ADT01-28.xml, ADT01-28.xsl, and ADT01-28-sample.json
- ADT01-28.hl7: hl7v2 message that will be converted. Small message that was retrieved from Sample Data in the Microsoft FHIR Converter
- ADT01-28.xml: Converted messaged into XML format, was converted using the HAPI Parser and is the file that the XSLT will be used on
- ADT01-28.xsl: Contains the transformation, not entirely finished as I have ignored complexities and url mapping, as well as any other confusions. These have been marked and format for them is below in the "Creating the mappping" section.
- ADT01-28-sample.json: Was retrieved by using the Microsoft FHIR Converter extension in VS Code
- In order to view without a Saxon Processor(or anything that supports XSLT 3.0 and XSD 1.1), use this <a href="https://www.xsltfiddle.liberty-development.net/">Fiddle<a> 

### XPATH Syntax
- Link: https://www.w3schools.com/xml/xpath_syntax.asp
- XPATH has several inbuilt objects for use, such as array, string, map
- Map: each of the listed objects can be given a key if inside a map object, value is in between the divs
- Typical div:
```
<map>
    <string key="key">value</string>
</map>
```
- Can import packages, such as XPATH, XSLT, etc and each package can be given a namespace. You can leave **ONE** without namespace, which will not need one. 
- With namespace
```
<xsl:stylesheet version="3.0" xmlns:xpath="http://www.w3.org/2005/xpath-functions">
    <xpath:map>
        <xpath:string key="key">value</xpath:string>
    </xpath:map>
</xsl:stylesheet>
```
- Without namespace
```
<xsl:stylesheet version="3.0" xmlns:xpath="http://www.w3.org/2005/xpath-functions">
    <map>
        <string key="key">value</string>
    </map>
</xsl:stylesheet>
```
- XSL has "value-of" object which can pull an object/variable from the code. Needs path to get to it, if you use 'template match=""' or "for-each" then you can start in that current directory with "./"
- If the xml file has a namespace, you must add that into the xsl and reference that when using its path with every item
- Ex.
```
<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:hl7="urn:hl7-org:v2xml">
    <xsl:value-of select="/hl7:bigdiv/hl7:found"/>
</xsl:stylesheet>
```


### Creating the mapping
- Using sample messages from the Microsoft FHIR Converter sample data, currently using ADT-A08-02 with the ADT-A08 template
- Scrapped ADT-A08 as some messages are deprecated, don't want to use deprecated samples
- Using ADT_A01 messages
- Noting multiple complexities that will be unaddressed, such as the Provenence, Organization, etc. These complexities will be marked as "some-complexity"
- Multiple urls have been found throughout the FHIR bundle, will have to look into where these come from, may be marked with "some-url"
- Unknown values have been marked with "??"

### New Issues to work out
- Repeated segments, multiple of ADT_A01/PID/PID.3/CX.1, figure out how to differentiate/choose. Happens with Patient in identifier/value and identifier/type/coding/code
- **NEW Complexity**: Looks like the FHIR converter uses an online coding system to create a display message, ex. we get the code 'AN' from HL7v2 and with the given website, we can see a table that maps it to 'Account number' which is written in code
- Some Coding seems to come out of nowhere, must look into that, ex. is in the JSON Encounter Participant code has ATND from nowhere in xml


