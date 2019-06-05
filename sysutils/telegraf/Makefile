# $OpenBSD: Makefile,v 1.4 2019/06/05 14:27:02 landry Exp $

COMMENT =	plugin-driven server agent for collecting metrics

BROKEN-i386 =	build fails, no error message

GH_ACCOUNT =	influxdata
GH_PROJECT =	telegraf
GH_TAGNAME =	1.9.0
REVISION =	0
HOMEPAGE =	https://influxdata.com
# selfhosted because we bundle go deps
MASTER_SITES =	https://rhaalovely.net/stuff/

CATEGORIES =		sysutils

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
	mkdir -p ${WRKDIR}/go/src/github.com/influxdata/
	ftp -o ${WRKDIR}/${DISTFILES} https://github.com/influxdata/telegraf/archive/${GH_TAGNAME}/${DISTFILES}
	tar -C ${WRKDIR}/go/src/github.com/influxdata/ -xzf ${WRKDIR}/${DISTFILES}
	${SETENV} ${MAKE_ENV} go get github.com/golang/dep/cmd/dep
	cd ${WRKDIR}/go/src/github.com/influxdata/${DISTNAME} && ${SETENV} ${MAKE_ENV} ${WRKDIR}/go/bin/dep ensure
	rm -Rf ${WRKDIR}/go/{bin,pkg} ${WRKDIR}/go/src/github.com/influxdata/${DISTNAME}/vendor/github.com/influxdata/telegraf ${WRKDIR}/${DISTFILES}
	cd ${WRKDIR}/go/src/github.com/influxdata/ && tar -czf /usr/ports/distfiles/${DISTFILES} ${DISTNAME}

.include <bsd.port.mk>
