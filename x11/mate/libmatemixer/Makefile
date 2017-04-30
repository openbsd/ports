# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:25 robert Exp $

COMMENT=		mixer library for MATE desktop

MATE_PROJECT=		libmatemixer

SHARED_LIBS +=  matemixer                 0.0 # 0.0

CATEGORIES=		audio

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xext Xi Xtst m pthread xcb pulse
WANTLIB += FLAC dbus-1 execinfo ffi gdbm glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl ogg pcre pulse-mainloop-glib
WANTLIB += sndfile vorbis vorbisenc

MODULES=		x11/gnome

LIB_DEPENDS=		audio/pulseaudio

.include <bsd.port.mk>
