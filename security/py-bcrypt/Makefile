COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 4.1.3
DISTNAME=	bcrypt-${MODPY_EGG_VERSION}
DISTFILES=	bcrypt-${MODPY_EGG_VERSION}${EXTRACT_SUFX}
PKGNAME=	py-${DISTNAME}

.include "crates.inc"

CATEGORIES=	security

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} ${MODCARGO_WANTLIB}

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	devel/cargo \
		lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODCARGO_CARGOTOML= ${WRKSRC}/src/_bcrypt/Cargo.toml
MODCARGO_INSTALL= No
MODCARGO_TEST=	No

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools-rust${MODPY_FLAVOR}

do-configure:
	@${MODCARGO_configure}

do-build:
	@${MODCARGO_BUILD_TARGET}
	@${MODPY_BUILD_TARGET}

.include <bsd.port.mk>
