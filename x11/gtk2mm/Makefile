# $OpenBSD: Makefile,v 1.55 2013/01/11 13:44:25 ajacoutot Exp $

COMMENT=	C++ interface for gtk2+

GNOME_PROJECT=	gtkmm
GNOME_VERSION=	2.24.2
REVISION=	1

PKGNAME=	gtk2mm-${GNOME_VERSION}

CATEGORIES=	devel x11

SHARED_LIBS +=		gdkmm-2.4	11.0 # .2.0
SHARED_LIBS +=		gtkmm-2.4	11.0 # .2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender expat fontconfig freetype
WANTLIB += m pixman-1 pthread-stubs stdc++ xcb xcb-render
WANTLIB += z gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 GL Xxf86vm
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 xcb-shm
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0 drm
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre png
WANTLIB += sigc-2.0 atk-1.0 cairo cairomm-1.0 atkmm-1.6

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/atk2mm \
		devel/pangomm>=2.27 \
		x11/gtk+2

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
