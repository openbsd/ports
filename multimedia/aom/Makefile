COMMENT=	Alliance for Open Media AV1 video codec

V=		3.9.1
DISTNAME=	libaom-$V
PKGNAME=	aom-$V
CATEGORIES=	multimedia

SHARED_LIBS=	aom	4.2

HOMEPAGE=	https://aomedia.org/
SITES=		https://storage.googleapis.com/aom-releases/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

# XXX requires __atomic builtins
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

CONFIGURE_ARGS+=-DBUILD_SHARED_LIBS=On \
		-DENABLE_DOCS=Off \
		-DENABLE_TESTS=Off

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=-DENABLE_NEON=Off
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
