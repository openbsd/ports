# $OpenBSD: Makefile,v 1.52 2015/08/31 06:15:58 ajacoutot Exp $

COMMENT=		tag editor for various audio file formats

GNOME_PROJECT=		easytag
GNOME_VERSION=		2.4.0

CATEGORIES=		audio

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz id3
WANTLIB += id3tag m ogg opus opusfile pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += speex stdc++ tag vorbis vorbisfile wavpack xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
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
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-nautilus-actions

.include <bsd.port.mk>
