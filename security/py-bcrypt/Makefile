COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 4.2.1
DISTNAME=	bcrypt-${MODPY_EGG_VERSION}
DISTFILES=	bcrypt-${MODPY_EGG_VERSION}${EXTRACT_SUFX}
PKGNAME=	py-${DISTNAME}

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

FLAVORS=	python3
FLAVOR=		python3

MODCARGO_CARGOTOML= ${WRKSRC}/src/_bcrypt/Cargo.toml

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools-rust${MODPY_FLAVOR}

.include <bsd.port.mk>
