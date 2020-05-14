# $OpenBSD: Makefile,v 1.7 2020/05/14 15:07:20 ajacoutot Exp $

COMMENT=		Text Editor Product Line

GNOME_PROJECT=		tepl
GNOME_VERSION=		4.4.0

CATEGORIES=		devel

SHARED_LIBS +=  tepl-4                    1.1 # 1.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender amtk-5 atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 gtksourceview-4 harfbuzz
WANTLIB += iconv intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png uchardet xcb xcb-render xcb-shm xml2
WANTLIB += z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		textproc/uchardet \
			x11/gnome/amtk \
			x11/gtksourceview4

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-valgrind

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
