COMMENT =		cross-platform widget toolkit

PKGNAME =		agar-$V

SHARED_LIBS +=  ag_au                     1.0 # 5.0
SHARED_LIBS +=  ag_core                   2.0 # 5.0
SHARED_LIBS +=  ag_gui                    2.0 # 5.0
SHARED_LIBS +=  ag_map                    1.0 # 5.0
SHARED_LIBS +=  ag_math                   2.0 # 5.0
SHARED_LIBS +=  ag_net                    1.0 # 5.0
SHARED_LIBS +=  ag_sg                     1.0 # 5.0
SHARED_LIBS +=  ag_sk                     1.0 # 5.0
SHARED_LIBS +=  ag_vg                     2.0 # 5.0

LIB_DEPENDS =		audio/libsndfile \
			audio/portaudio-svn \
			devel/sdl2 \
			graphics/jpeg \
			graphics/png

CONFIGURE_ARGS +=	--enable-au \
			--enable-map \
			--with-gl=${X11BASE} \
			--with-x=${X11BASE} \
			--with-portaudio=${LOCALBASE} \
			--with-sndfile=${LOCALBASE}

MAKE_FLAGS =		PKGCONFIG_LIBDIR=${PREFIX}/lib/pkgconfig

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
