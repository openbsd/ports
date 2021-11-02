# $OpenBSD: Makefile,v 1.3 2021/11/02 00:02:54 sthen Exp $

COMMENT =		macaroon library for Python

MODPY_EGG_VERSION =	0.13.0
DISTNAME =		pymacaroons-${MODPY_EGG_VERSION}
PKGNAME =		py-macaroons-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/ecordell/pymacaroons

MAINTAINER =		Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		security/py-libnacl${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
