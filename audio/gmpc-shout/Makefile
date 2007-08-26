# $OpenBSD: Makefile,v 1.1.1.1 2007/08/26 18:50:42 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		shoutcast support, for gmpc

VERSION=		0.15.0
DISTNAME=		gmpc-shout-${VERSION}
CATEGORIES=		audio

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m mpd pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png xml2 z

MASTER_SITES=		http://download.sarine.nl/gmpc-${VERSION}/plugins/ \
			http://humppa.nl/distfiles/gmpc/

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=		${RUN_DEPENDS}
USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
