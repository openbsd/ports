# $OpenBSD: Makefile,v 1.9 2019/03/27 18:13:38 robert Exp $

COMMENT=		weather library for MATE

SHARED_LIBS +=  mateweather               7.9 # 7.9

MATE_PROJECT=		libmateweather

CATEGORIES=		net

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender epoxy expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl lzma m pcre pixman-1
WANTLIB += pthread sqlite3 xcb xcb-render xcb-shm
WANTLIB += xml2 z harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += cairo cairo-gobject graphite2 soup-2.4 gdk-3
WANTLIB += gtk-3 atk-1.0 atk-bridge-2.0
WANTLIB += fribidi
WANTLIB += idn2 png16 psl unistring

MODULES=		x11/gnome

MODGNOME_TOOLS=		gtk-update-icon-cache

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+3

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

.include <bsd.port.mk>
