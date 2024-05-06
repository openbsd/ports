COMMENT =		statistical data visualization

MODPY_EGG_VERSION =	0.12.2
DISTNAME =		seaborn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		graphics math

HOMEPAGE =		https://seaborn.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core
MODPY_PYTEST =		Yes

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR}>=3.1 \
			math/py-numpy${MODPY_FLAVOR}>=1.17.0 \
			math/py-pandas${MODPY_FLAVOR}>=0.25.0 \
			math/py-scipy${MODPY_FLAVOR}>=1.3.0

TEST_IS_INTERACTIVE =	x11

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
