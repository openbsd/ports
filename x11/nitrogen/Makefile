# $OpenBSD: Makefile,v 1.13 2013/04/02 16:16:47 ajacoutot Exp $

COMMENT=		background browser and setter for X11

DISTNAME=		nitrogen-1.5.2
REVISION=		6
CATEGORIES=		x11 graphics

HOMEPAGE=		http://projects.l3ib.org/nitrogen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		devel/gettext


WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkmm-2.4 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pixman-1 png
WANTLIB += pthread pthread-stubs sigc-2.0 stdc++ xcb xcb-render
WANTLIB += xcb-shm z

LIB_DEPENDS=		x11/gtk2mm
RUN_DEPENDS=		x11/gtk+2,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
