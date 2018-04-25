# $OpenBSD: Makefile,v 1.4 2018/04/25 15:50:26 landry Exp $

COMMENT =	monitoring and metric analytics dashboards

GH_ACCOUNT =	grafana
GH_PROJECT =	grafana
GH_TAGNAME =	v5.0.4

CATEGORIES =	sysutils

HOMEPAGE =	https://grafana.com

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${GH_PROJECT}-${GH_TAGNAME:C/^v//}.linux-x64${EXTRACT_SUFX}:0
MASTER_SITES0 =	https://s3-us-west-2.amazonaws.com/grafana-releases/release/

# Apache 2.0 (bundles roboto and opensans fonts)
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/go
WANTLIB += c pthread

post-extract:
	rm -Rf ${WRKSRC}/bin/grafana-{server,cli}{,.md5}

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/grafana-server ./pkg/cmd/grafana-server
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} -o bin/grafana-cli ./pkg/cmd/grafana-cli

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/grafana-{server,cli} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/grafana
	${INSTALL_DATA} ${WRKSRC}/conf/*.{ini,toml} ${PREFIX}/share/examples/grafana
	${INSTALL_DATA_DIR} ${PREFIX}/share/grafana/conf
	cp -R ${WRKSRC}/public ${PREFIX}/share/grafana

.include <bsd.port.mk>
