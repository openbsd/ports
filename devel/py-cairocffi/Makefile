COMMENT=	cffi-based cairo bindings for Python

MODPY_DISTV=	1.7.1
DISTNAME=	cairocffi-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://github.com/Kozea/cairocffi

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-cffi
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	math/py-numpy \
		print/py-pikepdf

.include <bsd.port.mk>
