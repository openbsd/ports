# $OpenBSD: Makefile,v 1.1.1.1 2020/03/07 10:12:55 sthen Exp $

COMMENT =	like Prometheus, but for logs

GH_ACCOUNT =	grafana
GH_PROJECT =	loki
GH_TAGNAME =	v1.3.0

CATEGORIES =	sysutils

HOMEPAGE =	https://grafana.com/oss/loki/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go
WANTLIB =	c pthread

MODGO_FLAGS += -ldflags="-w -X github.com/grafana/loki/pkg/build.Version=${GH_TAGNAME:C/^v//}"

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/loki ./cmd/loki
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/promtail ./cmd/promtail
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/logcli ./cmd/logcli
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/loki-canary ./cmd/loki-canary

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/loki ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/loki
	${INSTALL_DATA} ${WRKSRC}/cmd/loki/loki-local-config.yaml \
	    ${PREFIX}/share/examples/loki
	${INSTALL_PROGRAM} ${WRKSRC}/bin/promtail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/promtail
	${INSTALL_DATA} ${WRKSRC}/cmd/promtail/promtail-local-config.yaml \
	    ${PREFIX}/share/examples/promtail
	${INSTALL_PROGRAM} ${WRKSRC}/bin/logcli ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/loki-canary ${PREFIX}/bin

.include <bsd.port.mk>
