COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-2.3.3

SHARED_LIBS +=  SoundTouch           4.0      # 1.0

CATEGORIES=	audio devel

HOMEPAGE=	https://www.surina.net/soundtouch/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

SITES=		https://www.surina.net/soundtouch/
WRKDIST=	${WRKDIR}/soundtouch

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/cmake

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON

.if ${MACHINE_ARCH} == "i386"
CXXFLAGS +=	-DSOUNDTOUCH_DISABLE_X86_OPTIMIZATIONS
.endif

.include <bsd.port.mk>
