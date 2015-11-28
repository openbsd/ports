# $OpenBSD: Makefile,v 1.1.1.1 2015/11/28 14:53:36 rpointel Exp $

COMMENT =		penetration testing tool to detect/exploit SQL injection

DISTNAME =		sqlmap-1.0

CATEGORIES =		security

HOMEPAGE =		http://sqlmap.org/

MAINTAINER =		sebastien dellac <shaxo@laposte.net>

#GPLv2
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		sqlmapproject
GH_PROJECT =		sqlmap
GH_COMMIT =		5020269f507d027056312fb63a2a985622e45d59

MODULES =		lang/python

MODPY_ADJ_FILES	= 	sqlmap.py

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST = 		${WRKDIR}/sqlmap-${GH_COMMIT}

do-install:
	cp -r ${WRKDIST} ${PREFIX}/share/sqlmap
	ln -s ${TRUEPREFIX}/share/sqlmap/sqlmap.py ${PREFIX}/bin/sqlmap

.include <bsd.port.mk>
