COMMENT =		3D space simulator

DISTNAME =		Vega-Strike_v${V}-Source
PKGNAME =		vegastrike-${V}

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} GL GLU SDL Xi Xmu
WANTLIB += atk-1.0 boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_python${MODPY_VERSION:C/\.//g}-mt boost_thread-mt c cairo expat freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glut gobject-2.0
WANTLIB += gthread-2.0 gtk-3 jpeg m ogg openal pango-1.0 png util
WANTLIB += vorbis vorbisfile z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python \
			devel/cmake

LIB_DEPENDS =		x11/gtk+3 \
			audio/openal \
			devel/boost \
			audio/libvorbis \
			graphics/freeglut \
			graphics/jpeg \
			graphics/png \
			devel/sdl

RUN_DEPENDS =		games/vegastrike/utcs>=${V}

CONFIGURE_ARGS =	-DDISABLE_OGRE=ON

.include <bsd.port.mk>
