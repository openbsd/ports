COMMENT=	statistical data visualization

MODPY_DISTV=	0.13.2
DISTNAME=	seaborn-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	graphics math

HOMEPAGE=	https://seaborn.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes
MODPY_PYTEST_ARGS= -v
RUN_DEPENDS=	graphics/py-matplotlib \
		math/py-numpy \
		math/py-pandas \
		math/py-scipy

# many tests segfault if PORTS_PRIVSEP is used
TEST_IS_INTERACTIVE=	x11

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
