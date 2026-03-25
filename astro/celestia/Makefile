COMMENT=		real-time 3D visualization of space

GH_ACCOUNT=		CelestiaProject
GH_PROJECT=		Celestia
GH_COMMIT=		504e54ca7decb483c81f76357ada8bd95a7b0f47

DISTNAME=		celestia-1.7.0pre20260319
EPOCH=			0

SHARED_LIBS +=	celestia                  0.0 # 0.0

CATEGORIES=		astro x11

HOMEPAGE=		https://celestiaproject.space/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Widgets avcodec avformat avif avutil c epoxy fmt
WANTLIB += freetype intl jpeg m png swscale z
WANTLIB += ${MODLUA_WANTLIB}

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/cmake \
			lang/lua \
			x11/qt6

BUILD_DEPENDS=		devel/boost \
			devel/gettext,-tools \
			devel/gperf \
			devel/fast-float \
			math/eigen3

LIB_DEPENDS=		devel/fmt \
			graphics/ffmpeg \
			graphics/libavif \
			${MODLUA_LIB_DEPENDS}

RUN_DEPENDS=		astro/celestia-data \
			devel/desktop-file-utils

CONFIGURE_ARGS=		-DENABLE_SPICE=OFF \
			-DENABLE_SDL=OFF \
			-DENABLE_QT5=OFF \
			-DENABLE_QT6=ON \
			-DENABLE_GLUT=ON \
			-DENABLE_FFMPEG=ON \
			-DENABLE_NLS=ON \
			-DENABLE_LIBAVIF=ON

.include <bsd.port.mk>
