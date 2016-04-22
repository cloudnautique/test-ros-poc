FROM alpine:3.3

COPY ./create_files /create_files.sh
CMD ["/create_files.sh"]
