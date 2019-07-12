# $OpenBSD: Makefile,v 1.5 2019/07/12 20:48:45 sthen Exp $

COMMENT =	Python IP address manipulation library

MODPY_EGG_VERSION = 2.1.11
DISTNAME =	ipaddr-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	https://github.com/google/ipaddr-py

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES	=	lang/python
MODPY_PI =	Yes

do-test:
	${MODPY_BIN} ${WRKSRC}/ipaddr_test.py

.include <bsd.port.mk>
