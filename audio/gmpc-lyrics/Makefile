# $OpenBSD: Makefile,v 1.9 2009/01/30 22:49:43 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		lyrics fetcher, for gmpc

VERSION=		0.17.0
DISTNAME=		gmpc-lyrics-${VERSION}
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

HOMEPAGE=		http://gmpcwiki.sarine.nl/index.php?title=Lyrics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xrender atk-1.0 cairo expat fontconfig \
		Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m mpd pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xml2 z \
		crypto curl idn ssl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=		${RUN_DEPENDS}
USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
