COMMENT =	time-series datastore for metrics, events, and analytics

MODGO_VERSION=	v1.8.10
MODGO_MODNAME=	github.com/influxdata/influxdb
GH_ACCOUNT =	influxdata
GH_PROJECT =	influxdb
GH_TAGNAME =	${MODGO_VERSION}

HOMEPAGE =	https://influxdata.com

CATEGORIES =		databases

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

BUILD_DEPENDS =	textproc/xmlto \
		textproc/asciidoc

WANTLIB +=	c pthread

.include "modules.inc"

# for patches to apply
WRKDIST =	${WRKSRC}
# for man/Makefile
USE_GMAKE =	Yes
SUBST_VARS =	VARBASE

NO_TEST =	Yes

do-install:
	${MODGO_INSTALL_TARGET}
	cd ${WRKSRC}/man && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/influxdb/
	${INSTALL_DATA} ${WRKSRC}/etc/config.sample.toml \
		${PREFIX}/share/examples/influxdb/

.include <bsd.port.mk>
