# $OpenBSD: Makefile,v 1.5 2019/07/07 11:20:55 ajacoutot Exp $

COMMENT=		Text Editor Product Line

GNOME_PROJECT=		tepl
GNOME_VERSION=		4.2.0
REVISION=		0

CATEGORIES=		devel

SHARED_LIBS +=  tepl-4                    1.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender amtk-5 atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtksourceview-4 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png uchardet
WANTLIB += xcb xcb-render xcb-shm xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		textproc/uchardet \
			x11/gnome/amtk \
			x11/gtksourceview4

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-valgrind

.include <bsd.port.mk>
