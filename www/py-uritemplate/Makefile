# $OpenBSD: Makefile,v 1.8 2021/10/24 09:28:53 sthen Exp $

COMMENT =	URI templates

MODPY_EGG_VERSION = 3.0.1
DISTNAME =	uritemplate-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	www

HOMEPAGE =	https://uritemplate.readthedocs.io/en/latest/

# BSD 3 clauses or Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
