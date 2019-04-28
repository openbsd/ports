# $OpenBSD: Makefile,v 1.11 2019/04/28 20:51:52 sthen Exp $

COMMENT =		Python module providing a password hashing framework

MODPY_EGG_VERSION =	1.7.1
DISTNAME =		passlib-${MODPY_EGG_VERSION}
PKGNAME =		py-passlib-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		security

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =		https://bitbucket.org/ecollins/passlib/wiki/Home

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		security/py-bcrypt${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && \
	    PASSLIB_TEST_MODE="full" nosetests --tests passlib/tests

.include <bsd.port.mk>
