COMMENT =		cross-platform widget toolkit

PKGNAME =		agar-$V

SHARED_LIBS +=  ag_au                     0.1 # 5.0
SHARED_LIBS +=  ag_core                   1.0 # 5.0
SHARED_LIBS +=  ag_gui                    1.0 # 5.0
SHARED_LIBS +=  ag_map                    0.0 # 5.0
SHARED_LIBS +=  ag_math                   1.0 # 5.0
SHARED_LIBS +=  ag_net                    0.0 # 5.0
SHARED_LIBS +=  ag_sg                     0.0 # 5.0
SHARED_LIBS +=  ag_sk                     0.0 # 5.0
SHARED_LIBS +=  ag_vg                     1.0 # 5.0

LIB_DEPENDS =		audio/libsndfile \
			audio/portaudio-svn \
			devel/sdl \
			graphics/jpeg \
			graphics/png

CONFIGURE_ARGS +=	--enable-au \
			--enable-map \
			--with-gl=${X11BASE} \
			--with-x=${X11BASE} \
			--with-portaudio=${LOCALBASE} \
			--with-sndfile=${LOCALBASE}

MAKE_FLAGS =		PKGCONFIG_LIBDIR=${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
