# $OpenBSD: Makefile,v 1.6 2020/02/05 20:43:12 sthen Exp $

COMMENT =	generic test automation framework for acceptance testing

MODPY_EGG_VERSION =	3.1.2

# We could use PyPI, but the test suite is not distributed via that means.
GH_ACCOUNT =	robotframework
GH_PROJECT =	robotframework
GH_TAGNAME =	v${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# Apache
PERMIT_PACKAGE =	Yes

FLAVORS =               python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

post-install:
.for i in rebot robot
	mv ${PREFIX}/bin/$i ${PREFIX}/bin/$i${MODPY_BIN_SUFFIX}
.endfor

# There is also a suite of acceptance tests, but they are *very* slow and
# it asks the user to type things and click stuff.
do-test:
	cd ${WRKSRC}/utest && ${MODPY_BIN} run.py

.include <bsd.port.mk>
