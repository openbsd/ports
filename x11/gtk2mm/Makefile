# $OpenBSD: Makefile,v 1.40 2010/10/11 08:19:58 jasper Exp $

COMMENT=	C++ interface for gtk2+

GNOME_PROJECT=	gtkmm
GNOME_VERSION=	2.22.0

PKGNAME=	gtk2mm-${GNOME_VERSION}

REVISION=	1

CATEGORIES=	devel x11

SHARED_LIBS +=		gdkmm-2.4	10.0 # .2.0
SHARED_LIBS +=		gtkmm-2.4	10.0 # .2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender expat fontconfig freetype
WANTLIB += m pixman-1 pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-render-util z gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre png
WANTLIB += sigc-2.0 atk-1.0 cairo cairomm-1.0 atkmm-1.6

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::devel/atk2mm \
		::devel/glib2mm \
		::devel/pangomm \
		::x11/gtk+2 \
		::graphics/cairomm

SEPARATE_BUILD=	concurrent

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
