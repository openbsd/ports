COMMENT =	emulates the Super Nintendo Entertainment System
BROKEN-alpha =	ICE/failure on filter/hq2x.cpp
BROKEN-hppa =	ICE/failure on filter/hq2x.cpp

GH_ACCOUNT =	snes9xgit
GH_PROJECT =	snes9x
GH_TAGNAME =	1.63
REVISION =	0

CATEGORIES =	emulators games

HOMEPAGE =	http://www.snes9x.com/

MAINTAINER =	Lucas Gabriel Vuotto <lucas@sexy.is>

# non-commercial
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SPIRV X11 Xext Xrandr
WANTLIB += Xv atk-1.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += epoxy gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 glslang glslang-default-resource-limits
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtkmm-3.0 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangomm-1.4 png sigc-2.0 z

# libvulkan seems opened via dlopen, as the ports builds and links without it.
# Runtime will abort if Vulkan is used as the renderer and vulkan-loader isn't
# installed.
RUN_DEPENDS +=	devel/desktop-file-utils \
		graphics/vulkan-loader \
		x11/gtk+4,-guic

BUILD_DEPENDS +=	graphics/spirv-cross \
			graphics/vulkan-headers

LIB_DEPENDS +=	devel/sdl2 \
		graphics/glslang \
		graphics/png \
		x11/gtk3mm

MODULES +=	devel/cmake \
		textproc/intltool

# C++17
COMPILER =	base-clang

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
			-DCMAKE_INSTALL_DATAROOTDIR="share" \
			-DUSE_PORTAUDIO=OFF \
			-DUSE_OSS=OFF \
			-DUSE_ALSA=OFF \
			-DUSE_WAYLAND=OFF \
			-DUSE_PULSEAUDIO=OFF \
			-DUSE_SYSTEMZIP=OFF

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/gtk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snes9x
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${PREFIX}/share/doc/snes9x
	cd ${WRKDIST}/docs && ${INSTALL_DATA} control-inputs.txt controls.txt \
	    snapshots.txt ${PREFIX}/share/doc/snes9x
	cd ${WRKDIST}/unix && ${INSTALL_DATA} snes9x.conf.default \
	    ${PREFIX}/share/examples/snes9x

.include <bsd.port.mk>
