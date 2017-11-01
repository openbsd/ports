# $OpenBSD: Makefile,v 1.1.1.1 2017/11/01 21:53:24 ajacoutot Exp $

COMMENT=		Text Editor Product Line

GNOME_PROJECT=		tepl
GNOME_VERSION=		3.0.0

CATEGORIES=		devel

SHARED_LIBS +=  amtk-3                    0.0 # 0.0
SHARED_LIBS +=  tepl-3                    0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png uchardet xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		textproc/uchardet \
			x11/gtksourceview3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-valgrind

.include <bsd.port.mk>
