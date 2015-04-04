# $OpenBSD: Makefile,v 1.22 2015/04/04 09:21:08 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	MSN style 'toaster' popups plugin for Pidgin

DISTNAME=	pidgin-guifications-2.16
REVISION=	10
CATEGORIES=	x11

HOMEPAGE=	http://plugins.guifications.org/trac/wiki/Guifications

MAINTAINER=	Thomas Wood <grand.edgemaster@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo dbus-1
WANTLIB += dbus-glib-1 drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += purple util xcb xcb-render xcb-shm xml2 

MASTER_SITES=	http://downloads.guifications.org/plugins/Guifications2/

MODULES=	devel/gettext textproc/intltool
LIB_DEPENDS=	net/pidgin,-libpurple \
		x11/gtk+2
BUILD_DEPENDS=	net/pidgin

LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
