# $OpenBSD: Makefile,v 1.9 2019/04/28 20:51:34 sthen Exp $

COMMENT =		autocompletion tool for Python

MODPY_EGG_VERSION =	0.13.2
DISTNAME =		jedi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://jedi.readthedocs.io

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jedi test

RUN_DEPENDS =		devel/py-parso${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-docopt${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
