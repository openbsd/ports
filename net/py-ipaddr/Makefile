# $OpenBSD: Makefile,v 1.3 2016/01/26 13:29:11 sthen Exp $

COMMENT =	Python IP address manipulation library

MODPY_EGG_VERSION = 2.1.10
REVISION =	0
DISTNAME =	ipaddr-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	https://github.com/google/ipaddr-py

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES	=	lang/python
MODPY_PI =	Yes

do-test:
	${MODPY_BIN} ${WRKSRC}/ipaddr_test.py

.include <bsd.port.mk>
