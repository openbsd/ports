# $OpenBSD: Makefile,v 1.18 2020/03/10 03:31:45 daniel Exp $

COMMENT =		computer algebra system (CAS) in Python

MODPY_EGG_VERSION =	1.5.1
REVISION =		1
DISTNAME =		sympy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		https://www.sympy.org

# New BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			math/py-mpmath${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
