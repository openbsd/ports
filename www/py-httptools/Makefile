COMMENT=	fast HTTP parser for Python

MODPY_DISTV=	0.6.4
DISTNAME=	httptools-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://github.com/MagicStack/httptools

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython

# I have had this run once, but not reliably, even with MODPY_TEST_LINK_SO
# and a self-TDEP
NO_TEST=	Yes

.include <bsd.port.mk>
