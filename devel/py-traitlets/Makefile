# $OpenBSD: Makefile,v 1.16 2020/03/31 19:18:36 bket Exp $

COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	4.3.3
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	traitlets

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
