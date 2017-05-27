# build
This is a dockerized build server using Jenkins, Sonarqube and mysql.

This is primarily an educational exercise for me to get to up to speed on Docker containers. Secondarily, it makes for a nice platform to show continuous integration and static analysis to my Agile Testing and TDD classes. Thirdarily (pretty sure that's a word) I should be eating my own dog food on my own personal development.

My goal for this build server is someone should be able to pull this directly from Git, enter a few values in the .env environment file, run docker-compose and have a full working dev ops ecosystem building and analyzing my [Knotlog](https://github.com/jasonandersen/knotlog) project.

USAGE: 
* Run the `buildimgs.sh` shell script one time to build all the Docker images locally.
* Update the `.env` environment file with appropriate credential values and path to your local code repository.
* Run `docker-compose up` to start all three containers in the proper order.

NOTE: I've done virtually no work to secure these containers so please don't assume you can run them in any kind of production environment out of the box.
