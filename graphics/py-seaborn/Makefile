COMMENT =		statistical data visualization

MODPY_DISTV =	0.12.2
DISTNAME =		seaborn-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		graphics math

HOMEPAGE =		https://seaborn.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core
MODPY_PYTEST =		Yes

RUN_DEPENDS =		graphics/py-matplotlib>=3.1 \
			math/py-numpy>=1.17.0 \
			math/py-pandas>=0.25.0 \
			math/py-scipy>=1.3.0

TEST_IS_INTERACTIVE =	x11

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
