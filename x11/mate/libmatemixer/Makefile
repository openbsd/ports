# $OpenBSD: Makefile,v 1.5 2017/09/19 11:51:50 ajacoutot Exp $

COMMENT=		mixer library for MATE desktop

MATE_PROJECT=		libmatemixer
REVISION=		2

SHARED_LIBS +=  matemixer                 0.0 # 0.0

CATEGORIES=		audio

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xext Xi Xtst m pthread xcb pulse
WANTLIB += FLAC dbus-1 execinfo ffi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl ogg pcre pulse-mainloop-glib
WANTLIB += sndfile vorbis vorbisenc

MODULES=		x11/gnome

LIB_DEPENDS=		audio/pulseaudio

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
