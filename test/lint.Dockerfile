FROM busybox as base
COPY lint.Dockerfile .

FROM scratch
MAINTAINER moby@example.com
COPY --from=base \
  /lint.Dockerfile \
  /

CMD [ "echo", "Hello, Norway!" ]
CMD [ "echo", "Hello, Sweden!" ]
ENTRYPOINT my-program start
