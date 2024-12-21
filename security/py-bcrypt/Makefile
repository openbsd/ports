COMMENT=	bcrypt blowfish password hashing for Python

MODPY_DISTV=	4.2.1
DISTNAME=	bcrypt-${MODPY_DISTV}
DISTFILES=	bcrypt-${MODPY_DISTV}${EXTRACT_SUFX}
PKGNAME=	py-${DISTNAME}
REVISION=	0

.include "crates.inc"

CATEGORIES=	security

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODCARGO_WANTLIB}

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools-rust
MODPY_PI=	Yes

MODCARGO_CARGOTOML= ${WRKSRC}/src/_bcrypt/Cargo.toml

RUN_DEPENDS=	devel/py-cffi
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools-rust

.include <bsd.port.mk>
