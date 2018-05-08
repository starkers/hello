FROM golang:1.10

# NOTE: Ideally these steps should be squished into less steps

ENV SRC=/src
WORKDIR $SRC
ADD . $SRC


# build inside the container
RUN cd $SRC ; go build -o /app

# cleanup (optional)
RUN rm -rf $SRC

# expose and run
EXPOSE 8080
ENTRYPOINT /app
