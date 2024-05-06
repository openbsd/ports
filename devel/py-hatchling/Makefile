COMMENT=	modern, extensible Python build backend used by Hatch

MODPY_EGG_VERSION=	1.24.1

DISTNAME=	hatchling-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# https://github.com/pypa/hatch
HOMEPAGE=	https://hatch.pypa.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-editables${MODPY_FLAVOR} \
		devel/py-pathspec${MODPY_FLAVOR} \
		devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-trove-classifiers${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR}

MODPY_PYBUILD=	other

.include <bsd.port.mk>
