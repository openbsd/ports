COMMENT=	Hatch plugin for fancy PyPI readmes

MODPY_DISTV=	24.1.0

DISTNAME=	hatch_fancy_pypi_readme-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	devel/py-hatchling

# some tests use the network
MODPY_PYTEST=	Yes
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
