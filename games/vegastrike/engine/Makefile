COMMENT =		3D space simulator

DISTNAME =		Vega-Strike_v${V}-Source
PKGNAME =		vegastrike-${V}

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} GL GLU SDL2 Xi
WANTLIB += Xmu boost_atomic-mt boost_chrono-mt boost_container-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_graph-mt
WANTLIB += boost_log-mt boost_log_setup-mt boost_program_options-mt
WANTLIB += boost_python${MODPY_VERSION:C/\.//g}-mt boost_regex-mt boost_serialization-mt
WANTLIB += boost_thread-mt c expat glut jpeg m ogg openal png
WANTLIB += util vorbis vorbisfile z

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
			devel/sdl2

RUN_DEPENDS =		games/vegastrike/utcs>=${V}

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="-I${X11BASE}/include" \
			-DDISABLE_OGRE=ON \
			-DINSTALL_GTEST=OFF \
			-DUSE_GTEST=OFF

.include <bsd.port.mk>
