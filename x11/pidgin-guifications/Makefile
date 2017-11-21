# $OpenBSD: Makefile,v 1.26 2017/11/21 00:13:05 naddy Exp $

COMMENT=	MSN style 'toaster' popups plugin for Pidgin

DISTNAME=	pidgin-guifications-2.16
REVISION=	13
CATEGORIES=	x11

HOMEPAGE=	http://plugins.guifications.org/trac/wiki/Guifications

MAINTAINER=	Thomas Wood <grand.edgemaster@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gadu gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv idn intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread purple xcb xcb-render
WANTLIB += xcb-shm xml2 z

MASTER_SITES=	http://downloads.guifications.org/plugins/Guifications2/

MODULES=	textproc/intltool
LIB_DEPENDS=	net/pidgin,-libpurple \
		x11/gtk+2
BUILD_DEPENDS=	net/pidgin

LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
