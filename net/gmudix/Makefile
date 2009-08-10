# $OpenBSD: Makefile,v 1.14 2009/08/10 06:33:43 kili Exp $

COMMENT=		GNOME MUD/Moo Client

DISTNAME=		gmudix-0.10
PKGNAME=		${DISTNAME}p8
CATEGORIES=		net x11

HOMEPAGE=		http://dw.nl.eu.org/mudix.html
MASTER_SITES=		http://dw.nl.eu.org/gmudix/

MAINTAINER=		Chris Kuethe <ckuethe@ualberta.ca>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype glitz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb z

USE_X11=		Yes

LIB_DEPENDS=		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gmudix
	${INSTALL_DATA} ${WRKSRC}/doc/gmudix.txt ${PREFIX}/share/doc/gmudix

.include <bsd.port.mk>
