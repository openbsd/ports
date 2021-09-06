# $OpenBSD: Makefile,v 1.51 2021/09/06 20:56:50 sthen Exp $

COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	3.4.8
REVISION=	0
DISTNAME=	cryptography-${MODPY_EGG_VERSION}
DISTFILES=	cryptography-${MODPY_EGG_VERSION}${EXTRACT_SUFX}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
.include "crates.inc"

CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} crypto pthread ssl

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}>=1.4.2 \
		devel/py-six${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR} \
		security/py-asn1crypto${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools-rust${MODPY_FLAVOR}

PORTHOME=	${WRKDIR}

MODPY_PYTEST=	Yes
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test-subtests${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		textproc/py-iso8601${MODPY_FLAVOR}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
MODULES+=	devel/cargo
RUST_COMMENT=
MODCARGO_CARGOTOML= ${WRKSRC}/src/rust/Cargo.toml
WANTLIB+=	c c++abi

do-configure:
	@${MODCARGO_configure}
.else
RUST_COMMENT=	"@comment "
MAKE_ENV=	CRYPTOGRAPHY_DONT_BUILD_RUST=1
.endif
SUBST_VARS+=	RUST_COMMENT

.include <bsd.port.mk>
