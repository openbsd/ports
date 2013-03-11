# $OpenBSD: Makefile,v 1.21 2013/03/11 11:35:49 espie Exp $

COMMENT=	graphical MIB browser

DISTNAME=	mbrowse-0.4.3
REVISION=		0
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mbrowse/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m netsnmp
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm z

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-snmp-type=net \
		--with-snmp-prefix=${LOCALBASE} \
		--with-snmp-include=${LOCALBASE}/include \
		--with-snmp-lib=${LOCALBASE}/lib

LIB_DEPENDS=	x11/gtk+2 \
		net/net-snmp

.include <bsd.port.mk>
