# $OpenBSD: Makefile,v 1.3 2016/10/22 21:38:12 kili Exp $

COMMENT =		cross-platform widget toolkit

PKGNAME =		agar-$V
REVISION =		0

SHARED_LIBS +=  ag_au                     0.0 # 5.0
SHARED_LIBS +=  ag_core                   0.0 # 5.0
SHARED_LIBS +=  ag_dev                    0.0 # 5.0
SHARED_LIBS +=  ag_gui                    0.0 # 5.0
SHARED_LIBS +=  ag_math                   0.0 # 5.0
SHARED_LIBS +=  ag_vg                     0.0 # 5.0

WANTLIB += GL SDL X11 X11-xcb Xdamage Xext Xfixes Xinerama Xxf86vm
WANTLIB += db drm expat fontconfig freetype glapi iconv jpeg m
WANTLIB += png pthread pthread-stubs sndio usbhid xcb xcb-dri2
WANTLIB += xcb-glx z

LIB_DEPENDS =		audio/libsndfile \
			converters/libiconv \
			databases/db/v4 \
			devel/sdl \
			graphics/jpeg \
			graphics/png

CONFIGURE_ARGS +=	--with-gl=${X11BASE} \
			--with-x=${X11BASE} \
			--with-portaudio=${LOCALBASE} \
			--with-sndfile=${LOCALBASE}

.include <bsd.port.mk>
