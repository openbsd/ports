# $OpenBSD: Makefile,v 1.45 2014/04/23 11:28:31 ajacoutot Exp $

COMMENT=		tag editor for various audio file formats

GNOME_PROJECT=		easytag
GNOME_VERSION=		2.2.1

CATEGORIES=		audio

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += id3 id3tag m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread speex stdc++ tag vorbis vorbisfile wavpack
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome


MODGNOME_TOOLS=		desktop-file-utils docbook gtk-update-icon-cache yelp

LIB_DEPENDS=		audio/id3lib \
			audio/libid3tag \
			audio/speex \
			audio/flac \
			audio/libvorbis \
			audio/taglib \
			audio/wavpack \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
