FROM scratch
COPY gotcping /usr/bin/gotcping
ENTRYPOINT ["/usr/bin/gotcping"]
