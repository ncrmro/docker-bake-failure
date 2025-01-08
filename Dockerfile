FROM busybox as base

COPY --from=example1 /fake-binary /bin/
COPY --from=example2 /fake-binary2 /bin/


FROM base as production

COPY --from=base /bin/fake-binary /bin/
COPY --from=base /bin/fake-binary2 /bin/