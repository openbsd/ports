# $OpenBSD: Makefile,v 1.8 2009/08/11 08:42:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	MSN style 'toaster' popups plugin for Pidgin

DISTNAME=	pidgin-guifications-2.16
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

HOMEPAGE=	http://plugins.guifications.org/trac/wiki/Guifications

MAINTAINER=	Thomas Wood <grand.edgemaster@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png xml2 z pthread-stubs xcb

MASTER_SITES=	http://downloads.guifications.org/plugins/Guifications2/

MODULES=	devel/gettext textproc/intltool
LIB_DEPENDS=	purple::net/pidgin

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
