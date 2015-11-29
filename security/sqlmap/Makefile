# $OpenBSD: Makefile,v 1.3 2015/11/29 14:33:40 ajacoutot Exp $

COMMENT =		penetration testing tool to detect/exploit SQL injection

DISTNAME =		sqlmap-1.0
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		http://sqlmap.org/

MAINTAINER =		sebastien dellac <shaxo@laposte.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		sqlmapproject
GH_PROJECT =		sqlmap
GH_COMMIT =		5020269f507d027056312fb63a2a985622e45d59

MODULES =		lang/python

MODPY_ADJ_FILES	= 	sqlmap.py

# NO_BUILD but needs ${MODPY_LIBDIR}/compileall.py
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

WRKDIST = 		${WRKDIR}/sqlmap-${GH_COMMIT}
INSTDIR =		${PREFIX}/share/sqlmap

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	rm ${INSTDIR}/{.{gitattributes,gitignore},{CONTRIBUTING,README}.md}
	rm -rf ${INSTDIR}/doc
	ln -s ${TRUEPREFIX}/share/sqlmap/sqlmap.py ${PREFIX}/bin/sqlmap
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${INSTDIR}

.include <bsd.port.mk>
