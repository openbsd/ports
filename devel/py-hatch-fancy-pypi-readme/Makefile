COMMENT=	Hatch plugin for fancy PyPI readmes

MODPY_EGG_VERSION=	24.1.0

DISTNAME=	hatch_fancy_pypi_readme-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	devel/py-hatchling${MODPY_FLAVOR}

# some tests use the network
MODPY_PYTEST=	Yes
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
