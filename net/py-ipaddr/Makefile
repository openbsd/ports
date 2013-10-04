# $OpenBSD: Makefile,v 1.1.1.1 2013/10/04 09:20:14 giovanni Exp $

COMMENT =	Python IP address manipulation library

MODPY_EGG_VERSION = 2.1.10
DISTNAME =	ipaddr-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	http://code.google.com/p/ipaddr-py/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://ipaddr-py.googlecode.com/files/

MODULES	=	lang/python

do-test:
	${MODPY_BIN} ${WRKSRC}/ipaddr_test.py

.include <bsd.port.mk>
