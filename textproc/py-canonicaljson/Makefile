# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:13 sthen Exp $

COMMENT =		canonical JSON

MODPY_EGG_VERSION =	1.1.4
DISTNAME =		canonicaljson-${MODPY_EGG_VERSION}
PKGNAME =		py-canonicaljson-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/matrix-org/python-canonicaljson

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-frozendict${MODPY_FLAVOR} \
			devel/py-simplejson${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
