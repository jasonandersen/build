# build
Dockerized build server using Jenkins, Sonarqube and mysql.

This is primarily an educational exercise for me to get to up to speed on Docker containers. Secondarily, it makes for a nice platform to show continuous integration and static analysis to my Agile Testing and TDD classes. Thirdarily (is that a word?) I should be eating my own dog food on my own personal development.

My goal for this build server is someone should be able to pull this directly from Git, enter a few values in the .env environment file, run docker-compose and have a full working dev ops ecosystem building and analyzing my Knotlog project.
