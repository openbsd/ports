# $OpenBSD: Makefile,v 1.2 2018/04/23 14:46:03 ajacoutot Exp $

COMMENT=		Text Editor Product Line

GNOME_PROJECT=		tepl
GNOME_VERSION=		4.0.0

CATEGORIES=		devel

SHARED_LIBS +=  amtk-4                    0.0 # 0.0
SHARED_LIBS +=  tepl-4                    0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtksourceview-4 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png uchardet
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		textproc/uchardet \
			x11/gtksourceview4

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-valgrind

.include <bsd.port.mk>
