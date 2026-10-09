COMMENT=	python wrapper for spatial index

MODPY_DISTV=	1.4.1
DISTNAME=	rtree-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	geo/spatialindex

TEST_DEPENDS=	math/py-numpy

.include <bsd.port.mk>
