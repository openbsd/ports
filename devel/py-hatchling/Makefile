COMMENT=	modern, extensible Python build backend used by Hatch

MODPY_DISTV=	1.26.3

DISTNAME=	hatchling-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/pypa/hatch
HOMEPAGE=	https://hatch.pypa.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

NO_TEST=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-editables \
		devel/py-pathspec \
		devel/py-pluggy \
		devel/py-trove-classifiers \
		sysutils/py-packaging

MODPY_PYBUILD=	other

.include <bsd.port.mk>
