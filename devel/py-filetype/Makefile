# $OpenBSD: Makefile,v 1.3 2021/11/02 00:00:49 sthen Exp $

COMMENT =		infer file type and MIME type

MODPY_EGG_VERSION =	1.0.7

DISTNAME =		filetype-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/h2non/filetype.py

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/flake8 \
			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
