# $OpenBSD: Makefile,v 1.24 2013/03/11 11:35:55 espie Exp $

COMMENT =	Python module to handle IPv4 and IPv6 address

MODPY_EGG_VERSION =	0.75
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-IP-${MODPY_EGG_VERSION}
REVISION=		1
CATEGORIES =		net

HOMEPAGE =		https://github.com/haypo/python-ipy/wiki

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=I/IPy/}

MODULES =		lang/python

MODPY_DISTUTILS_INSTALLARGS =	-O2

do-test:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
