# $OpenBSD: Makefile,v 1.9 2011/03/23 16:34:51 ajacoutot Exp $

COMMENT=	C++ wrapper for gtksourceview

GNOME_PROJECT=	gtksourceviewmm
GNOME_VERSION=	2.10.1
REVISION=	0

SHARED_LIBS +=	gtksourceviewmm-2.0    1.0      # .3.0

CATEGORIES=	x11

HOMEPAGE=	http://projects.gnome.org/gtksourceviewmm/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairomm-1.0
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread-stubs
WANTLIB += sigc-2.0 xcb xcb-render xcb-render-util xml2 z stdc++
WANTLIB += gtksourceview-2.0 gtkmm-2.4 atkmm-1.6 gdkmm-2.4

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/mm-common

LIB_DEPENDS=	x11/gtksourceview \
		x11/gtk2mm

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# XXX when updating, check that this is still needed
CONFIGURE_ENV+=	MMDOCTOOLDIR=`pkg-config --variable=doctooldir mm-common-util`

.include <bsd.port.mk>
