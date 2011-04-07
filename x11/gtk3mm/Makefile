# $OpenBSD: Makefile,v 1.1.1.1 2011/04/07 14:54:17 ajacoutot Exp $

COMMENT=	C++ interface for gtk3+

GNOME_PROJECT=	gtkmm
GNOME_VERSION=	3.0.0

PKGNAME=	gtk3mm-${GNOME_VERSION}

CATEGORIES=	devel x11

SHARED_LIBS +=  gdkmm-3.0                 0.0 # 2.0
SHARED_LIBS +=  gtkmm-3.0                 0.0 # 2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += cairo cairo-gobject cairomm-1.0 drm expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png pthread-stubs sigc-2.0 stdc++ xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/atk2mm \
		devel/pangomm>=2.28 \
		x11/gtk+3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
