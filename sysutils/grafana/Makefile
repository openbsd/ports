# $OpenBSD: Makefile,v 1.10 2020/03/05 10:09:51 martin Exp $

COMMENT =	monitoring and metric analytics dashboards

GH_ACCOUNT =	grafana
GH_PROJECT =	grafana
GH_TAGNAME =	v6.6.2

CATEGORIES =	sysutils

HOMEPAGE =	https://grafana.com

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${GH_PROJECT}-${GH_TAGNAME:C/^v//}.linux-amd64${EXTRACT_SUFX}:0
MASTER_SITES0 =	https://dl.grafana.com/oss/release/

# Apache 2.0 (bundles roboto and opensans fonts)
PERMIT_PACKAGE =	Yes

MODULES =	lang/go
WANTLIB += c pthread

MODGO_FLAGS += -ldflags="-w -X main.version=${GH_TAGNAME:C/^v//}"

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/grafana-server ./pkg/cmd/grafana-server
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/grafana-cli ./pkg/cmd/grafana-cli

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/grafana-{server,cli} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/grafana
	${SUBST_CMD} ${WRKSRC}/conf/sample.ini
.for c in sample.ini ldap.toml
	${INSTALL_DATA} ${WRKSRC}/conf/$c ${PREFIX}/share/examples/grafana
.endfor
	cd ${WRKSRC}/conf/ && pax -rw provisioning ${PREFIX}/share/examples/grafana/
	${INSTALL_DATA_DIR} ${PREFIX}/share/grafana/conf
	${INSTALL_DATA} ${WRKSRC}/conf/defaults.ini ${PREFIX}/share/grafana/conf/
	cp -R ${WRKSRC}/public ${PREFIX}/share/grafana

.include <bsd.port.mk>
