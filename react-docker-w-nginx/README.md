If you are using same docker-compose.yml file for both dev and production environment, then you need to run development environment with docker-compose up web-dev. if you run docker-compose up then it will by default run all the containers defined inside docker-compose file.

NOTE: Although this example shows us how to configure Docker for both dev and production envionrment, you might not need docker-compose.yml for production build, as your hosting provider will handle that, but Dockerfile and nginx.conf will require.
