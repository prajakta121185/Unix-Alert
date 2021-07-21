#!/bin/ksh

(
echo "To: prajakta12@gmail.com"
echo "Subject: Job Status"
echo "Content-Type: text/html"
echo
echo "<html>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<head>
<title> ALERT </title>
</head>

<body>
<p style="font-family:verdana;color:red;">
JOB MONITORING</body>

<table>
  <tr>
    <th>JOB NAME</th>
    <th>STATUS</th>
  </tr>
  <tr>
    <td>JOB-1</td>
    <td bgcolor='red'>FAILED</td>
  </tr>
<tr>
    <td>JOB-2</td>
    <td bgcolor='green'>SUCCESS</td>
  </tr>
<tr>
    <td>JOB-3</td>
    <td bgcolor='red'>FAILED</td>
  </tr>
<tr>
    <td>JOB-4</td>
    <td bgcolor='green'>SUCCESS</td>
  </tr>

</table>
<html>";
echo
) | /usr/sbin/sendmail -t
