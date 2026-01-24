COMMENT=	editable interval tree data structure for Python 2 and 3

MODPY_DISTV=	3.2.1
DISTNAME=	intervaltree-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/chaimleib/intervaltree

# Apache v2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-uv-dynamic-versioning
RUN_DEPENDS=	devel/py-sortedcontainers

.include <bsd.port.mk>
