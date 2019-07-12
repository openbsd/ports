# $OpenBSD: Makefile,v 1.29 2019/07/12 20:49:58 sthen Exp $

COMMENT=		spell-checking library for GTK+

GNOME_PROJECT=		gspell
GNOME_VERSION=		1.8.1

CATEGORIES=		textproc

SHARED_LIBS +=  gspell-1             4.0      # 5.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender aspell atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant-2 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		textproc/enchant2 \
			x11/gtk+3

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		ac_cv_prog_VALGRIND=

.include <bsd.port.mk>
