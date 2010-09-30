# $OpenBSD: Makefile,v 1.13 2010/09/30 07:21:20 ajacoutot Exp $

COMMENT=	graphical MIB browser

DISTNAME=	mbrowse-0.4.0
REVISION=	0
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mbrowse/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0

MODULES=	devel/gettext

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-snmp-type=net \
		--with-snmp-prefix=${LOCALBASE} \
		--with-snmp-include=${LOCALBASE}/include \
		--with-snmp-lib=${LOCALBASE}/lib

LIB_DEPENDS=	gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
		netsnmp.>=6.2::net/net-snmp

.include <bsd.port.mk>
