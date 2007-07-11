# $OpenBSD: Makefile,v 1.4 2007/07/11 14:25:34 aanriot Exp $

SHARED_ONLY=		Yes

COMMENT=		"magnatune browser, for gmpc"

VERSION=		0.15.0
DISTNAME=		gmpc-magnatune-${VERSION}
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sarine.nl/gmpc-plugins-magnatune

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m mpd pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png xml2 z

MASTER_SITES=		http://download.sarine.nl/gmpc-${VERSION}/plugins/ \
			http://humppa.nl/distfiles/gmpc/

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=		${RUN_DEPENDS}
USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
