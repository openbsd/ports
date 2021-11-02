# $OpenBSD: Makefile,v 1.17 2021/11/02 00:00:50 sthen Exp $

COMMENT =		autocompletion tool for Python

MODPY_EGG_VERSION =	0.18.0
DISTNAME =		jedi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://jedi.readthedocs.io

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-parso${MODPY_FLAVOR}>=0.8.0,<0.9.0

TEST_DEPENDS =		devel/py-docopt${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR}

# some tests need HOME to be writable
PORTHOME =		/tmp

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
