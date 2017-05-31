# pipeline secrets
Files in this directory will be picked up by Docker Compose and mounted as secrets for containers to use. __NO FILES IN THIS DIRECTORY SHOULD BE CHECKED IN TO VERSION CONTROL!__

These files should be added before the Docker Compose setup will work:
* mysql_root_pwd - contains the root password to use for the MySQL database that SonarQube uses
