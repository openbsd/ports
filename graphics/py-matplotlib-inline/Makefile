# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:16 sthen Exp $

COMMENT =		inline matplotlib backend for jupyter

MODPY_EGG_VERSION =	0.1.2
DISTNAME =		matplotlib-inline-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		graphics math

HOMEPAGE =		https://github.com/martinRenou/matplotlib-inline

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-traitlets${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

.include <bsd.port.mk>
