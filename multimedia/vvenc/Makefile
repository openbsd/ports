COMMENT=	Versatile Video Coding (VVC) encoder

GH_ACCOUNT=	fraunhoferhhi
GH_PROJECT=	vvenc
GH_TAGNAME=	v1.14.0
CATEGORIES=	multimedia

SHARED_LIBS=	vvenc	0.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c m pthread

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	devel/cmake

BUILD_DEPENDS+=	textproc/nlohmann-json

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=-DBUILD_SHARED_LIBS=ON \
		-DVVENC_ENABLE_THIRDPARTY_JSON=SYSTEM \
		-DVVENC_ENABLE_WERROR=FALSE

.include <bsd.port.mk>
