FROM busybox as base

COPY --from=example1 /fake-binary /bin/
COPY --from=example2 /fake-binary2 /bin/


FROM base as production

LABEL org.opencontainers.image.description="ayeee"

COPY --from=base /bin/fake-binary /bin/
COPY --from=base /bin/fake-binary2 /bin/