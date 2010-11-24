# $OpenBSD: Makefile,v 1.1.1.1 2010/11/24 13:10:07 jasper Exp $

COMMENT=		background browser and setter for X11

DISTNAME=		nitrogen-1.5.1
CATEGORIES=		x11 graphics

HOMEPAGE=		http://projects.l3ib.org/nitrogen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		devel/gettext

USE_LIBTOOL=		Yes
USE_GROFF=		Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += c cairo cairomm-1.0 drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pixman-1 png
WANTLIB += pthread pthread-stubs sigc-2.0 stdc++ xcb xcb-render
WANTLIB += xcb-shm z

LIB_DEPENDS=		x11/gtk2mm
RUN_DEPENDS=		x11/hicolor-icon-theme

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-xinerama \
			--disable-inotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
