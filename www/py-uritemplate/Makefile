# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:03 sthen Exp $

COMMENT =	URI templates

MODPY_EGG_VERSION = 3.0.0
DISTNAME =	uritemplate-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://uritemplate.readthedocs.io/en/latest/

# BSD 3 clauses or Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
