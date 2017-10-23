# $OpenBSD: Makefile,v 1.26 2017/10/23 17:10:49 sthen Exp $

COMMENT=	computer simulation game

DISTNAME=	corewars-0.9.13
REVISION=	8

CATEGORIES=	games x11

HOMEPAGE=	http://corewars.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=corewars/}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corewars
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/corewars

.include <bsd.port.mk>
