FROM busybox

COPY --from=example1 /fake-binary /bin/
