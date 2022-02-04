# $OpenBSD: Makefile,v 1.4 2022/02/04 10:28:52 sthen Exp $

COMMENT =		infer file type and MIME type

MODPY_EGG_VERSION =	1.0.10

DISTNAME =		filetype-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
