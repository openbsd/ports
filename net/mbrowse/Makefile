# $OpenBSD: Makefile,v 1.18 2011/03/03 09:44:30 jasper Exp $

COMMENT=	graphical MIB browser

DISTNAME=	mbrowse-0.4.2
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mbrowse/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 netsnmp>=6.2
WANTLIB += GL Xxf86vm crypto drm gthread-2.0 pthread xcb-render
WANTLIB += xcb-shm

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-snmp-type=net \
		--with-snmp-prefix=${LOCALBASE} \
		--with-snmp-include=${LOCALBASE}/include \
		--with-snmp-lib=${LOCALBASE}/lib

LIB_DEPENDS=	x11/gtk+2 \
		net/net-snmp

.include <bsd.port.mk>
