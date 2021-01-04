# $OpenBSD: Makefile,v 1.3 2021/01/04 14:06:37 sthen Exp $

COMMENT =	support for the scrypt key derivation function

MODPY_EGG_VERSION =	0.8.13

DISTNAME =	scrypt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	http://bitbucket.org/mhallin/py-scrypt

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
