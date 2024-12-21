COMMENT=	library for reading, modifying and creating LAS LiDAR files

MODPY_DISTV =	2.5.4
DISTNAME=	laspy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	geo devel textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# bin/laspy needs typer and lazrs
BUILD_DEPENDS=	math/py-numpy,${FLAVOR}
RUN_DEPENDS=	math/py-numpy,${FLAVOR} \
		graphics/py-opengl,${FLAVOR}

.include <bsd.port.mk>
