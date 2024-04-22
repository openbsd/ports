COMMENT=		mixer library for MATE desktop

REVISION=		0

MATE_PROJECT=		libmatemixer

SHARED_LIBS +=  matemixer                 0.0 # 0.0

CATEGORIES=		audio

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread xcb pulse
WANTLIB += FLAC dbus-1 execinfo ffi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl ogg pcre2-8 pulse-mainloop-glib
WANTLIB += sndfile vorbis vorbisenc
WANTLIB += Xau Xdmcp opus
WANTLIB += mp3lame mpg123

MODULES=		x11/gnome

LIB_DEPENDS=		audio/pulseaudio

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
