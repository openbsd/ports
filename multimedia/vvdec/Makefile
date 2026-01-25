COMMENT=	Versatile Video Coding (VVC) decoder

DISTNAME=	vvdec-3.1.0pl20260121
GH_ACCOUNT=	fraunhoferhhi
GH_PROJECT=	vvdec
GH_COMMIT=	872a790411cbb6b5a296085d02253335ccda47b2
CATEGORIES=	multimedia

SHARED_LIBS=	vvdec	0.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m pthread

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=-DBUILD_SHARED_LIBS=ON \
		-DVVDEC_ENABLE_WERROR=FALSE

.include <bsd.port.mk>
