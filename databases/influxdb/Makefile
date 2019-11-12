# $OpenBSD: Makefile,v 1.11 2019/11/12 22:05:27 rsadowski Exp $

COMMENT =	time-series datastore for metrics, events, and analytics

V =		1.6.6
DISTNAME =	influxdb-${V}

HOMEPAGE =	https://influxdata.com
# selfhosted because we bundle go deps
MASTER_SITES =	https://sizeofvoid.org/pub/OpenBSD/distfiles/

CATEGORIES =		databases

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

BUILD_DEPENDS =	security/go-crypto \
		textproc/go-text \
		devel/go-sys \
		net/go-net \
		textproc/xmlto \
		textproc/asciidoc

WANTLIB +=	c pthread

# our handrolled distfile has the "right" layout already
# disables MODGO_SETUP_WORKSPACE
CONFIGURE_STYLE =	No
WRKSRC =	${MODGO_WORKSPACE}/src/github.com/influxdata/influxdb
# for patches to apply
WRKDIST =	${WRKSRC}
# for man/Makefile
USE_GMAKE =	Yes
SUBST_VARS =	VARBASE

NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ./...
	cd ${WRKSRC}/man && ${MAKE_PROGRAM}

do-install:
	${MODGO_INSTALL_TARGET}
	cd ${WRKSRC}/man && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/influxdb/
	${INSTALL_DATA} ${WRKSRC}/etc/config.sample.toml \
		${PREFIX}/share/examples/influxdb/

# convenience hackish target to bundle/vendor dependencies
tarball: clean distclean
	mkdir -p ${WRKDIR}/go/src/github.com/influxdata/
	ftp -o ${WRKDIR}/gpm https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm
	ftp -o ${WRKDIR}/${DISTFILES} https://github.com/influxdata/influxdb/archive/v${V}/${DISTFILES}
	tar -s /influxdb-${V}/influxdb/ -C ${WRKDIR}/go/src/github.com/influxdata/ -xzf ${WRKDIR}/${DISTFILES}
	${SETENV} ${MAKE_ENV} bash ${WRKDIR}/gpm get ${WRKSRC}/Godeps
	find ${WRKDIR}/go -name .git -type d | xargs rm -Rf
	cd ${WRKDIR} && tar -czf /usr/ports/distfiles/${DISTFILES} go

.include <bsd.port.mk>
