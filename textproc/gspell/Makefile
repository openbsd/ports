# $OpenBSD: Makefile,v 1.26 2017/10/31 12:21:08 ajacoutot Exp $

COMMENT=		spell-checking library for GTK+

GNOME_PROJECT=		gspell
GNOME_VERSION=		1.6.1
REVISION=		0

CATEGORIES=		textproc

SHARED_LIBS +=  gspell-1             4.0      # 4.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 enchant epoxy expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		textproc/enchant \
			x11/gtk+3

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		ac_cv_prog_VALGRIND=

.include <bsd.port.mk>
