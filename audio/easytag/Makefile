# $OpenBSD: Makefile,v 1.49 2014/11/25 05:48:46 ajacoutot Exp $

COMMENT=		tag editor for various audio file formats

GNOME_PROJECT=		easytag
GNOME_VERSION=		2.2.5

CATEGORIES=		audio

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += id3 id3tag m ogg opus opusfile pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread speex stdc++ tag vorbis vorbisfile
WANTLIB += wavpack z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils docbook gtk-update-icon-cache yelp

LIB_DEPENDS=		audio/id3lib \
			audio/libid3tag \
			audio/speex \
			audio/flac \
			audio/libvorbis \
			audio/opusfile \
			audio/taglib \
			audio/wavpack \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
