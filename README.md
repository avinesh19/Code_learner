---
- hosts: all
gather_facts: yes
become_method: sudo
tasks:
 -name: set the permission on cron file
  file:
   path: /etc/cron.d
   state: touch
   owner: root
   group: root
   mode: 0700
 ignore_errors: yes
 
<!---
avinesh19/avinesh19 is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
