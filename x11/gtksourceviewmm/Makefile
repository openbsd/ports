# $OpenBSD: Makefile,v 1.4 2010/04/24 09:56:34 ajacoutot Exp $

COMMENT=	C++ wrapper for gtksourceview

GNOME_PROJECT=	gtksourceviewmm
GNOME_VERSION=	2.10.0

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
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread-stubs
WANTLIB += sigc-2.0 xcb xcb-render xcb-render-util xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gtksourceview-2.0::x11/gtksourceview \
		gtkmm-2.4,atkmm-1.6,gdkmm-2.4::x11/gtk2mm

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
