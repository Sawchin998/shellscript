#!/bin/bash

touch contact.txt

add_user()
{
 echo "Enter your name: "
 read name
 echo "Enter your email: "
 read email
 echo "Enter your number: "
 read number
 echo "${name}:${email}:${number}" >> contact.txt 
}

list_user()
{
 cat contact.txt
}

search_user()
{
 echo "Enter keywords to search: "
 read key
 grep $key contact.txt 
}

delete_user()
{
 echo "Enter user to  delete: "
 read user
 sed -i "/\b$user\b/d" contact.txt
}

edit_number()
{
 echo "Enter number to edit: "
 read key1
 echo "Enter new number: "
 read key2
 sed -i "s/\b$key1\b/$key2/" contact.txt
}

edit_email()
{
 echo "Enter email to edit: "
 read key1
 echo "Enter new email: "
 read key2
 sed -i "s/\b$key1\b/$key2/" contact.txt
}

while true;
do
 echo "1. Add new user"
 echo "2. List user"
 echo "3. Search User"
 echo "4. Delete User"
 echo "5. Edit Number"
 echo "6. Edit Email"
 echo "7. Exit"
 echo "Enter your choice: "
 read choice

 case $choice in
  1) add_user;;
  2) list_user;;
  3) search_user;;
  4) delete_user;;
  5) edit_number;;
  6) edit_email;;
  7) exit 0;;
  *) echo "Please choose from 1-7 "
  echo
 esac
done 
