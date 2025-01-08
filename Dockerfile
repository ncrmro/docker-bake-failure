FROM busybox

COPY --from=example1 /fake-binary /bin/
COPY --from=example2 /fake-binary2 /bin/
