<h1>Fast exportation of MySQL databases</h1>
<hr>
<p>The provided code is a Bash script that exports all databases using the mysqldump command.

    It sets the database login credentials: hostname, username, and password.

    The script retrieves the list of all databases using the mysql command and stores the output in the dbListOutput variable.

    It splits the output into separate database names and stores them in the dbNames array.

    The script iterates over each database name and exports the database using the mysqldump command, saving the export to a file with the corresponding database name.

    After exporting each database, a message is displayed indicating the completion of the export.

    Finally, a message is displayed indicating the completion of the process of exporting all databases.

The code assumes default values for the username and password, but it's important to provide the correct credentials manually before running the script to ensure successful execution.</p>
