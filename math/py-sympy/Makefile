# $OpenBSD: Makefile,v 1.22 2021/11/02 00:01:37 sthen Exp $

COMMENT =		computer algebra system (CAS) in Python

MODPY_EGG_VERSION =	1.7.1
DISTNAME =		sympy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		math

HOMEPAGE =		https://www.sympy.org

# New BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			math/py-mpmath${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
