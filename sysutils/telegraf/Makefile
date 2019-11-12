# $OpenBSD: Makefile,v 1.7 2019/11/12 22:31:23 rsadowski Exp $

COMMENT =	plugin-driven server agent for collecting metrics

BROKEN-i386 =	build fails, no error message

GH_ACCOUNT =	influxdata
GH_PROJECT =	telegraf
GH_TAGNAME =	1.12.3
HOMEPAGE =	https://influxdata.com
# selfhosted because we bundle go deps
MASTER_SITES =	https://sizeofvoid.org/pub/OpenBSD/distfiles/

CATEGORIES =		sysutils

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

# dep rebundles them..
#BUILD_DEPENDS =	security/go-crypto \
#		textproc/go-text \
#		devel/go-sys \
#		net/go-net

WANTLIB +=	c pthread

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/telegraf/
	${INSTALL_DATA} ${WRKSRC}/etc/telegraf.conf \
		${PREFIX}/share/examples/telegraf/

do-build:
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ./...

## convenience hackish target to bundle/vendor dependencies
tarball: clean distclean
	@if ! [ -x ${LOCALBASE}/bin/dep ]; then echo 'run "pkg_add dep" to use this target'; exit 1; fi
	mkdir -p ${WRKDIR}/go/src/github.com/influxdata/
	ftp -o ${WRKDIR}/${DISTFILES} https://github.com/influxdata/telegraf/archive/${GH_TAGNAME}/${DISTFILES}
	tar -C ${WRKDIR}/go/src/github.com/influxdata/ -xzf ${WRKDIR}/${DISTFILES}
	cd ${WRKDIR}/go/src/github.com/influxdata/${DISTNAME} && ${SETENV} ${MAKE_ENV} dep ensure
	rm -Rf ${WRKDIR}/go/{bin,pkg} ${WRKDIR}/go/src/github.com/influxdata/${DISTNAME}/vendor/github.com/influxdata/telegraf ${WRKDIR}/${DISTFILES}
	cd ${WRKDIR}/go/src/github.com/influxdata/ && tar -czf /usr/ports/distfiles/${DISTFILES} ${DISTNAME}

.include <bsd.port.mk>
