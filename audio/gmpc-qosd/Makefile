# $OpenBSD: Makefile,v 1.1.1.1 2007/04/19 07:34:50 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		"fancy display that shows information, for gmpc"

VERSION=		0.14.0
DISTNAME=		gmpc-qosd-${VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://cms.qballcow.nl/index.php?page=Plugins

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m mpd pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png xml2 z

MASTER_SITES=		http://download.sarine.nl/gmpc-${VERSION}/plugins/

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=		${RUN_DEPENDS}
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
