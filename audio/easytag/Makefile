# $OpenBSD: Makefile,v 1.69 2021/10/31 20:07:37 ajacoutot Exp $

COMMENT=		tag editor for various audio file formats

GNOME_PROJECT=		easytag
GNOME_VERSION=		2.4.3
REVISION=		9

CATEGORIES=		audio

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 c cairo cairo-gobject crypto
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz iconv id3 id3tag intl jpeg
WANTLIB += m ogg opus opusfile pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png speex tag vorbis vorbisfile wavpack
WANTLIB += xcb xcb-render xcb-shm z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
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
CONFIGURE_ARGS=		--disable-nautilus-actions

.include <bsd.port.mk>
