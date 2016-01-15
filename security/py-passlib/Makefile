# $OpenBSD: Makefile,v 1.7 2016/01/15 12:46:36 sthen Exp $

COMMENT =		Python module providing a password hashing framework

MODPY_EGG_VERSION =	1.6.5
DISTNAME =		passlib-${MODPY_EGG_VERSION}
PKGNAME =		py-passlib-${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =		https://pythonhosted.org/passlib/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && \
	    PASSLIB_TEST_MODE="full" nosetests --tests passlib/tests

.include <bsd.port.mk>
