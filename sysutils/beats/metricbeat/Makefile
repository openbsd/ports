# $OpenBSD: Makefile,v 1.28 2021/01/30 10:03:41 pvk Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat

BEATS_MODULES =	yes
KIBANA_DASHBOARDS = yes

pre-build:
	cd ${WRKSRC}/${BEAT}/cmd && ${MODGO_CMD} get ${MODGO_FLAGS} -d -v ./...
	chmod u+w \
		${MODGO_WORKSPACE}/pkg/mod/github.com/elastic/gosigar@v0.10.6-0.20200715000138-f115143bb233/sigar_openbsd.go
	cp ${FILESDIR}/sigar_openbsd.go ${MODGO_WORKSPACE}/pkg/mod/github.com/elastic/gosigar@v0.10.6-0.20200715000138-f115143bb233/

.include <bsd.port.mk>
