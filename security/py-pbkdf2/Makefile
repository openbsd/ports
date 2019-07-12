# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:35 sthen Exp $

COMMENT =	Python implementation of PBKDF2

MODPY_EGG_VERSION =	1.3
REVISION =		4
DISTNAME =		pbkdf2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security devel

MAINTAINER =		Giannis Tsaraias <tsg@openbsd.org>

HOMEPAGE =		http://www.dlitz.net/software/python-pbkdf2/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI = 		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3

TEST_ENV =		PYTHONPATH=${WRKBUILD}

do-test:
	cd ${WRKSRC}/test; ${SETENV} ${ALL_TEST_ENV} \
		${MODPY_BIN} ./test_pbkdf2.py

.include <bsd.port.mk>
