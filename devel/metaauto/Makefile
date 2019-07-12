# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:42 sthen Exp $

COMMENT =	wrapper for gnu auto*

PKG_ARCH =	*
VERSION =	1.0
REVISION =	3
DISTNAME =	metaauto-${VERSION}
CATEGORIES =	devel

PKGCONFIG_V =	0.29.1
DISTFILES =	pkg-config-${PKGCONFIG_V}.tar.gz

MAINTAINER =	Marc Espie <espie@openbsd.org>

MASTER_SITES =	https://pkg-config.freedesktop.org/releases/

# BSD, except pkg.m4 which is GPL
PERMIT_PACKAGE =	Yes

AUTOCONF_SCRIPTS = autoconf autoupdate autoheader autoreconf autom4te
AUTOMAKE_SCRIPTS = automake aclocal

WRKDIST = ${WRKDIR}

NO_TEST = Yes

do-build:
.for i in ${AUTOCONF_SCRIPTS}
	sed -e s,@PROG_VERSION,AUTOCONF_VERSION, -e s,@LOCALBASE@,${LOCALBASE}, -e s,@SCRIPT@,$i, <${FILESDIR}/meta.in >${WRKBUILD}/$i
.endfor
.for i in ${AUTOMAKE_SCRIPTS}
	sed -e s,@PROG_VERSION,AUTOMAKE_VERSION, -e s,@LOCALBASE@,${LOCALBASE}, -e s,@SCRIPT@,$i, <${FILESDIR}/meta.in >${WRKBUILD}/$i
.endfor
	sed -e  s,@VERSION@,${PKGCONFIG_V},g \
		${WRKDIR}/pkg-config-${PKGCONFIG_V}/pkg.m4.in \
		>${WRKDIR}/pkg-config-${PKGCONFIG_V}/pkg.m4

do-install:
.for i in ${AUTOCONF_SCRIPTS} ${AUTOMAKE_SCRIPTS}
	${INSTALL_SCRIPT} ${WRKBUILD}/$i ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKDIR}/pkg-config-${PKGCONFIG_V}/pkg.m4 \
		${PREFIX}/share/aclocal

.include <bsd.port.mk>
