COMMENT =	lightweight shipper for system metrics
REVISION =	2

BEAT =		metricbeat

BEATS_MODULES =	yes
KIBANA_DASHBOARDS = yes

pre-build:
	cd ${WRKSRC}/${BEAT}/cmd && ${MODGO_CMD} get ${MODGO_FLAGS} -d -v ./...
	chmod u+w \
		${MODGO_WORKSPACE}/pkg/mod/github.com/elastic/gosigar@v0.14.1/sigar_openbsd.go
	cp ${FILESDIR}/sigar_openbsd.go ${MODGO_WORKSPACE}/pkg/mod/github.com/elastic/gosigar@v0.14.1/
	GOCACHE="${MODGO_GOCACHE}" go clean -cache

.include <bsd.port.mk>
