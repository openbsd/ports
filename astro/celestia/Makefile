COMMENT=		real-time 3D visualization of space

DIST_TUPLE=		github CelestiaProject Celestia 1fbc88e2ec75050c3ff95bf8b9071ee8cc7d862b .
# submodule for Spice until we have a port
DIST_TUPLE +=		github OpenSpace Spice 711ffdb91865c48018ba2efef963ed645ed2557b thirdparty/Spice

PKGNAME=		celestia-1.7.0pre20251225
EPOCH=			0

SHARED_LIBS +=	celestia                  0.0 # 0.0
SHARED_LIBS +=	spice                     0.0 # unknown

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
			math/eigen3

LIB_DEPENDS=		devel/fmt \
			graphics/ffmpeg \
			graphics/libavif \
			${MODLUA_LIB_DEPENDS}

RUN_DEPENDS=		astro/celestia-data \
			devel/desktop-file-utils

CONFIGURE_ARGS=		-DENABLE_SPICE=ON \
			-DENABLE_SDL=OFF \
			-DENABLE_QT5=OFF \
			-DENABLE_QT6=ON \
			-DENABLE_GLUT=ON \
			-DENABLE_FFMPEG=ON \
			-DENABLE_NLS=ON \
			-DENABLE_LIBAVIF=ON

pre-configure:
	${SUBST_CMD} ${WRKSRC}/thirdparty/Spice/CMakeLists.txt

post-install:
	${INSTALL_PROGRAM} \
		${WRKBUILD}/thirdparty/Spice/libspice.so.${LIBspice_VERSION} \
		${PREFIX}/lib/

.include <bsd.port.mk>
