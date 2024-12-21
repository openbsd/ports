COMMENT =		computer algebra system (CAS) in Python

MODPY_DISTV =	1.12
DISTNAME =		sympy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		math

HOMEPAGE =		https://www.sympy.org

# New BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/ipython \
			math/py-mpmath

TEST_DEPENDS =		devel/py-test \
			graphics/py-matplotlib \
			math/py-numpy

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
