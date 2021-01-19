FROM alpine:3 as base

RUN apk add sqlite-dev 

FROM base as builder

RUN apk add make gcc libc-dev

COPY Makefile src ./

RUN make

FROM base

USER ppsspp

WORKDIR ~/AdhocServer

COPY --from=builder /AdhocServer ./AdhocServer

COPY database.db .

EXPOSE 27312

CMD ['./AdhocServer']
