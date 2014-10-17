# $OpenBSD: Makefile,v 1.28 2014/10/17 07:59:17 benoit Exp $

COMMENT =	Python module to handle IPv4 and IPv6 address

MODPY_EGG_VERSION =	0.82a
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-IP-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		https://github.com/haypo/python-ipy/wiki

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=I/IPy/}

MODULES =		lang/python

MODPY_DISTUTILS_INSTALLARGS =	-O2

WRKDIST =		${WRKDIR}/python-ipy-${DISTNAME}

do-test:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
