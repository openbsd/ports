# $OpenBSD: Makefile,v 1.3 2009/01/30 22:48:36 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	last.fm coverart provider for gmpc

VERSION=	0.17.0
DISTNAME=	gmpc-last-fm-${VERSION}
PKGNAME=	gmpc-lastfm-${VERSION}
CATEGORIES=	audio

MAINTAINER=	Landry Breuil <gaston@gcu.info>

HOMEPAGE=	http://gmpcwiki.sarine.nl/index.php?title=Last.fm

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES=	devel/gettext

USE_LIBTOOL=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu

RUN_DEPENDS=	:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=	${RUN_DEPENDS}

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m mpd \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png xml2 z

.include <bsd.port.mk>
