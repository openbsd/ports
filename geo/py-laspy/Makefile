COMMENT=	library for reading, modifying and creating LAS LiDAR files

MODPY_DISTV =	2.6.1
DISTNAME=	laspy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	geo devel textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# bin/laspy needs typer and lazrs
BUILD_DEPENDS=	math/py-numpy
RUN_DEPENDS=	math/py-numpy \
		graphics/py-opengl

.include <bsd.port.mk>
