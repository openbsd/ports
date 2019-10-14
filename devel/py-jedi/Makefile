# $OpenBSD: Makefile,v 1.13 2019/10/14 22:31:20 kmos Exp $

COMMENT =		autocompletion tool for Python

MODPY_EGG_VERSION =	0.15.1
DISTNAME =		jedi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jedi.readthedocs.io

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-parso${MODPY_FLAVOR}>=0.5.0

TEST_DEPENDS =		devel/py-docopt${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR}

# some tests need HOME to be writable
PORTHOME =		/tmp

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
