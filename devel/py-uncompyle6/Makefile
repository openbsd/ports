# $OpenBSD: Makefile,v 1.24 2022/02/28 15:35:39 sthen Exp $

BROKEN = doesn't handle python 3.9.10 yet

COMMENT =		Python cross-version byte-code deparser

MODPY_EGG_VERSION =	3.8.0
DISTNAME =		uncompyle6-${MODPY_EGG_VERSION}
PKGNAME =		py-uncompyle6-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-uncompyle6/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-spark-parser${MODPY_FLAVOR} \
			devel/py-xdis${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	pytest

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
