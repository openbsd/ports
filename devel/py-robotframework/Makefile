# $OpenBSD: Makefile,v 1.2 2016/11/10 21:58:40 danj Exp $

COMMENT =	generic test automation framework for acceptance testing

MODPY_EGG_VERSION =	3.0
PKGNAME =		py-robotframework-${MODPY_EGG_VERSION}

# We could use PyPI, but the test suite is not distributed via that means.
GH_ACCOUNT =		robotframework
GH_PROJECT =		robotframework
GH_TAGNAME =		3.0

CATEGORIES =	devel

# Apache
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =               python3
FLAVOR ?=

MODULES =		lang/python
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

post-install:
.for i in pybot rebot robot
	mv ${PREFIX}/bin/$i ${PREFIX}/bin/$i${MODPY_BIN_SUFFIX}
.endfor

# There is also a suite of acceptance tests, but they are *very* slow and
# it asks the user to type things and click stuff.
do-test:
	cd ${WRKSRC}/utest && ${MODPY_BIN} run.py

.include <bsd.port.mk>
