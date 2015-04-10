# $OpenBSD: Makefile,v 1.23 2015/04/10 14:43:49 naddy Exp $

COMMENT=	computer simulation game

DISTNAME=	corewars-0.9.13
REVISION=	5

CATEGORIES=	games x11

HOMEPAGE=	http://corewars.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL xcb-render xcb-shm

LIB_DEPENDS=	x11/gtk+2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=corewars/}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corewars
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/corewars

.include <bsd.port.mk>
