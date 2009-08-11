# $OpenBSD: Makefile,v 1.2 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=		C++ wrapper for gtksourceview

GNOME_PROJECT=		gtksourceviewmm
GNOME_VERSION=		2.3.1
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=		gtksourceviewmm-2.0    0.0      # .2.0
CATEGORIES=		x11

HOMEPAGE=		http://projects.gnome.org/gtksourceviewmm/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png z cairomm-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 giomm-2.4 \
		glibmm-2.4 gtk-x11-2.0 pangomm-1.4 sigc-2.0 xml2 \
		pthread-stubs xcb

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gtksourceview-2.0::x11/gtksourceview \
			gtkmm-2.4,atkmm-1.6,gdkmm-2.4::x11/gtk2mm

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --disable-docs

.include <bsd.port.mk>
