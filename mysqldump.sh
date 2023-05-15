#!/bin/bash

# Dane logowania do bazy danych
hostname="localhost"
username="nazwa_uzytkownika"
password="haslo"

# Pobierz listę wszystkich baz danych
dbListOutput=$(mysql -u$username -p$password -h$hostname -e "SHOW DATABASES")

# Podziel wynik na osobne nazwy baz danych
IFS=$'\n' read -rd '' -a dbNames <<<"$dbListOutput"

# Eksportuj każdą bazę danych
for dbName in "${dbNames[@]}"; do
    mysqldump -u$username -p$password -h$hostname $dbName >"$dbName.sql"
    echo "Eksport bazy danych $dbName zakończony."
done

echo "Proces eksportu wszystkich baz danych zakończony."
