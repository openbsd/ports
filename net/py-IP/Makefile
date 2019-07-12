# $OpenBSD: Makefile,v 1.36 2019/07/12 20:48:44 sthen Exp $

COMMENT =	Python module to handle IPv4 and IPv6 address

MODPY_EGG_VERSION =	1.00
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-IP-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		https://github.com/autocracy/python-ipy/wiki

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_DISTUTILS_INSTALLARGS =	-O2
MODPY_PYOEXTENSION =		opt-2.pyc

WRKDIST =		${WRKDIR}/${DISTNAME}

do-test:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
