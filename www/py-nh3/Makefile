COMMENT=	Python bindings for the ammonia html sanitizer

MODPY_DISTV=	0.3.7
DISTNAME=	nh3-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES=	lang/python
MODPY_PYBUILD=	maturin
MODPY_PI=	Yes

.include "crates.inc"
.include <bsd.port.mk>
