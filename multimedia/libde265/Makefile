COMMENT-main=	open H.265 video codec implementation
COMMENT-tools=	tools for libde265 open H.265 video codec

V=		1.0.18
DISTNAME=	libde265-$V
REVISION=	0

SHARED_LIBS +=  de265                     3.0 # 0.12

CATEGORIES=	multimedia

HOMEPAGE=	https://www.libde265.org/

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

WANTLIB-tools += ${WANTLIB}
WANTLIB-tools += Qt5Core Qt5Gui Qt5Widgets SDL2 c de265 swscale

MULTI_PACKAGES=	-main -tools

SITES=		https://github.com/strukturag/libde265/releases/download/v$V/

MODULES=	devel/cmake \
		x11/qt5

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=-DENABLE_SHERLOCK265=ON

MODQT5_DEPS=	No
LIB_DEPENDS-main= ${LIB_DEPENDS}

LIB_DEPENDS-tools= ${LIB_DEPENDS} \
		multimedia/libde265,-main \
		devel/sdl2 \
		graphics/ffmpeg \
		x11/qt5/qtbase

.include <bsd.port.mk>
