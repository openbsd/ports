# $OpenBSD: Makefile,v 1.55 2021/11/08 14:46:55 sthen Exp $

COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	3.4.8
REVISION=	4
DISTNAME=	cryptography-${MODPY_EGG_VERSION}
DISTFILES=	cryptography-${MODPY_EGG_VERSION}${EXTRACT_SUFX}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
.include "crates.inc"

PATCHORIG=	.patch.orig

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

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}>=1.4.2

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools-rust${MODPY_FLAVOR}

# needs newer pytest than is in-tree
MODPY_PYTEST=	Yes
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test-subtests${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
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
MASTER_SITES9=	https://crates.io/api/v1/crates/
.  for _cratename _cratever in ${MODCARGO_CRATES}
SUPDISTFILES += cargo/${_cratename}-${_cratever}.tar.gz{${_cratename}/${_cratever}/download}:9
.  endfor
.endif
SUBST_VARS+=	RUST_COMMENT

.include <bsd.port.mk>
