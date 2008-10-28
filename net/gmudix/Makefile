# $OpenBSD: Makefile,v 1.12 2008/10/28 13:09:54 jasper Exp $

COMMENT=		GNOME MUD/Moo Client

DISTNAME=		gmudix-0.10
PKGNAME=		${DISTNAME}p6
CATEGORIES=		net x11

HOMEPAGE=		http://dw.nl.eu.org/mudix.html
MASTER_SITES=		http://dw.nl.eu.org/gmudix/

MAINTAINER=		Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xrender atk-1.0 c m cairo Xau Xcomposite \
			Xcursor Xdamage Xdmcp Xfixes Xi Xinerama Xrandr \
			expat fontconfig freetype gmodule-2.0 gobject-2.0 \
			pango-1.0 pangocairo-1.0 pixman-1 glitz png \
			pangoft2-1.0 pthread z

USE_X11=		Yes

LIB_DEPENDS=		glib-2.0,gthread-2.0::devel/glib2 \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gmudix
	${INSTALL_DATA} ${WRKSRC}/doc/gmudix.txt ${PREFIX}/share/doc/gmudix

.include <bsd.port.mk>
