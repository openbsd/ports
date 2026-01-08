COMMENT=	interior point conic optimization

MODPY_DISTV=	0.11.1
DISTNAME=	clarabel-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	math

HOMEPAGE=	https://clarabel.org/v${MODPY_DISTV:C/\.[[:digit:]]*$//}/

WANTLIB += ${MODCARGO_WANTLIB} m

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	maturin
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-cffi \
		math/py-numpy \
		math/py-scipy

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

.include "crates.inc"
.include <bsd.port.mk>
