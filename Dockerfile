FROM rocker/r-ver:4.0.2

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

RUN R -e "install.packages('jsonlite')"
RUN R -e "install.packages('plumber')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('stringr')"
RUN R -e "install.packages('ggplot2')"
    	
CMD ["R"]
