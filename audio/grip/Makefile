# $OpenBSD: Makefile,v 1.60 2017/08/30 06:17:50 ajacoutot Exp $

COMMENT=		front-end to external cd audio rippers and mp3 encoders

DISTNAME=		grip-3.5.2
CATEGORIES=		audio
REVISION=		0

HOMEPAGE=		http://sourceforge.net/projects/grip/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 bonobo-2
WANTLIB += bonobo-activation bonoboui-2 c cairo cdda_interface
WANTLIB += cdda_paranoia crypto curl fontconfig freetype gconf-2
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 id3 intl m nghttp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 popt pthread ssl ${COMPILER_LIBCXX} vte z
WANTLIB += ORBitCosNaming-2 canberra dbus-1 dbus-glib-1 expat
WANTLIB += ffi gailutil gcrypt gnome-keyring gpg-error graphite2
WANTLIB += harfbuzz iconv ltdl lzma ncurses ogg pcre pixman-1
WANTLIB += png pthread-stubs util vorbis vorbisfile xcb xcb-render
WANTLIB += xcb-shm xml2

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=grip/}
MODULES=		x11/gnome
MODGNOME_TOOLS=		yelp desktop-file-utils

LIB_DEPENDS=		audio/cdparanoia \
			audio/id3lib \
			devel/vte \
			net/curl \
			x11/gnome/libgnomeui

RUN_DEPENDS=		audio/vorbis-tools

BUILD_DEPENDS=		devel/gettext-tools

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
