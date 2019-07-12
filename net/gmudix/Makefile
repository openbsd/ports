# $OpenBSD: Makefile,v 1.27 2019/07/12 20:48:27 sthen Exp $

COMMENT=		GNOME MUD/Moo Client

DISTNAME=		gmudix-0.10
REVISION=		15
CATEGORIES=		net x11

HOMEPAGE=		http://dw.nl.eu.org/mudix.html
MASTER_SITES=		http://dw.nl.eu.org/gmudix/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += xcb z

LIB_DEPENDS=		devel/glib2 \
			x11/gtk+2

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gmudix
	${INSTALL_DATA} ${WRKSRC}/doc/gmudix.txt ${PREFIX}/share/doc/gmudix

.include <bsd.port.mk>
