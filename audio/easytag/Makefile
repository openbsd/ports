# $OpenBSD: Makefile,v 1.41 2014/04/01 17:03:13 jasper Exp $

COMMENT=		tag editor for various audio file formats

GNOME_PROJECT=		easytag
GNOME_VERSION=		2.1.9
REVISION=		0

CATEGORIES=		audio

HOMEPAGE=		https://wiki.gnome.org/Apps/EasyTAG

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 id3 id3tag m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread speex stdc++ vorbis
WANTLIB += vorbisfile wavpack z

MODULES=		devel/gettext \
			x11/gnome


MODGNOME_TOOLS +=	desktop-file-utils
MODGNOME_TOOLS +=	gtk-update-icon-cache
MODGNOME_TOOLS=		docbook yelp

LIB_DEPENDS=		audio/id3lib \
			audio/libid3tag \
			audio/speex \
			audio/flac \
			audio/libvorbis \
			audio/taglib \
			audio/wavpack \
			x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
