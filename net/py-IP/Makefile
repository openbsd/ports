# $OpenBSD: Makefile,v 1.32 2017/01/03 18:54:48 shadchin Exp $

COMMENT =	Python module to handle IPv4 and IPv6 address

MODPY_EGG_VERSION =	0.83
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-IP-${MODPY_EGG_VERSION}
CATEGORIES =		net
REVISION =		1

HOMEPAGE =		https://github.com/haypo/python-ipy/wiki

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
