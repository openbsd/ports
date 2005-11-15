# $OpenBSD: Makefile,v 1.3 2005/11/15 16:17:05 wilfried Exp $

COMMENT=		"Gnome2 MUD/Moo Client"

DISTNAME=		gmudix-0.10
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net x11
HOMEPAGE=		http://dw.nl.eu.org/mudix.html
MASTER_SITES=		http://dw.nl.eu.org/gmudix/
MAINTAINER=		Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 atk-1.0.0.0 c \
			fontconfig freetype gmodule-2.0.0.0 gobject-2.0.0.0 \
			iconv intl m pango-1.0.0.0 pangocairo-1.0.0.0 \
			cairo pangoft2-1.0.0.0 pthread z

USE_X11=		Yes

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		glib-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gmudix
	${INSTALL_DATA} ${WRKSRC}/doc/gmudix.txt ${PREFIX}/share/doc/gmudix

.include <bsd.port.mk>
