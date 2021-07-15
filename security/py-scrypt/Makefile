# $OpenBSD: Makefile,v 1.6 2021/07/15 17:06:27 sthen Exp $

COMMENT =	support for the scrypt key derivation function

MODPY_EGG_VERSION =	0.8.18

DISTNAME =	scrypt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	http://bitbucket.org/mhallin/py-scrypt

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
TEST_ENV =		PY_IGNORE_IMPORTMISMATCH=1

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
