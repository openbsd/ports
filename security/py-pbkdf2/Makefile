# $OpenBSD: Makefile,v 1.1.1.1 2015/05/04 16:42:19 zhuk Exp $

COMMENT =	Python implementation of PBKDF2

MODPY_EGG_VERSION =	1.3
DISTNAME =		pbkdf2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security devel

MAINTAINER =		Giannis Tsaraias <yannis@cryptolab.net>

HOMEPAGE =		http://wwww.dlitz.net/software/python-pbkdf2/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI = 		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3

TEST_ENV =		PYTHONPATH=${WRKBUILD}

do-test:
	cd ${WRKSRC}/test; ${SETENV} ${ALL_TEST_ENV} \
		${MODPY_BIN} ./test_pbkdf2.py

.include <bsd.port.mk>
