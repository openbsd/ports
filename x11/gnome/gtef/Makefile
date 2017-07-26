# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:32 sthen Exp $

COMMENT=		GTK+ Text Editor Framework

GNOME_PROJECT=		gtef
GNOME_VERSION=		2.0.1
REVISION=		0

CATEGORIES=		devel editors

SHARED_LIBS +=  gtef-2                    0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += ${COMPILER_LIBCXX} uchardet xcb xcb-render xcb-shm xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala


LIB_DEPENDS=		textproc/uchardet \
			x11/gtksourceview3

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-valgrind

.include <bsd.port.mk>
