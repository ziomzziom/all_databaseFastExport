<h1>Fast exportation of MySQL databases</h1>
<hr>
<p>The provided code is a Bash script that exports all databases using the mysqldump command.</p>

<b>Code Description:</b>

<ul>
<li><p>It sets the database login credentials: hostname, username, and password.</p></li>

<li><p>The script retrieves the list of all databases using the mysql command and stores the output in the dbListOutput variable.</p></li>

<li><p>It splits the output into separate database names and stores them in the dbNames array.</p></li>

<li><p>The script iterates over each database name and exports the database using the mysqldump command, saving the export to a file with the corresponding database name.</p></li>

<li><p>After exporting each database, a message is displayed indicating the completion of the export.</p></li>

<li><p>Finally, a message is displayed indicating the completion of the process of exporting all databases.</p></li>
<ul>
  
<h2>The code assumes default values for the username and password, but it's important to provide the correct credentials manually before running the script to ensure successful execution.</h2>
  
  <table>
  <tr>
    <th>Component</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Script Type</td>
    <td>Bash script</td>
  </tr>
  <tr>
    <td>Command</td>
    <td>mysqldump</td>
  </tr>
  <tr>
    <td>Database Login</td>
    <td>Hostname, username, password</td>
  </tr>
  <tr>
    <td>Output Variable</td>
    <td>dbListOutput</td>
  </tr>
  <tr>
    <td>Database Names</td>
    <td>Stored in the dbNames array</td>
  </tr>
  <tr>
    <td>Export Process</td>
    <td>Iterates over each database, exports using mysqldump, and saves to corresponding file</td>
  </tr>
  <tr>
    <td>Messages</td>
    <td>Displayed after each export and at the end of the process</td>
  </tr>
  <tr>
    <td>Credentials</td>
    <td>Default values assumed, manual input required</td>
  </tr>
</table>
  
  <h1>EVENTUALLY</h1>
  <pre>
    <code>
      for /f "skip=1" %i in ('mysql -u root -e "show databases;"') do mysqldump -u root %i > %i.sql
    </code>
  </pre>
  <b>This loop executes a command-line loop in a Windows batch script. It retrieves a list of MySQL databases using the mysql -u root -e "show databases;" command and iterates over each database. For each database, it performs a mysqldump command to export the database into an SQL file with the same name as the database.</b>
