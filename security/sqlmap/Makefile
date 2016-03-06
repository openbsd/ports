# $OpenBSD: Makefile,v 1.4 2016/03/06 13:34:26 sthen Exp $

COMMENT =		penetration testing tool to detect/exploit SQL injection

GH_ACCOUNT =		sqlmapproject
GH_PROJECT =		sqlmap
GH_TAGNAME =		1.0

# remove when back in-sync with upstream tags
DISTNAME =		sqlmap-1.0pl0
WRKDIST =		${WRKDIR}/sqlmap-1.0

CATEGORIES =		security

HOMEPAGE =		http://sqlmap.org/

MAINTAINER =		sebastien dellac <shaxo@laposte.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_ADJ_FILES	= 	sqlmap.py

# NO_BUILD but needs ${MODPY_LIBDIR}/compileall.py
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

INSTDIR =		${PREFIX}/share/sqlmap

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	rm ${INSTDIR}/{.{gitattributes,gitignore},README.md}
	rm -rf ${INSTDIR}/doc
	ln -s ${TRUEPREFIX}/share/sqlmap/sqlmap.py ${PREFIX}/bin/sqlmap
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${INSTDIR}

.include <bsd.port.mk>
