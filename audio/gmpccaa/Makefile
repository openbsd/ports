# $OpenBSD: Makefile,v 1.7 2007/05/26 21:08:07 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"Amazon cover art provider for gmpc"

VERSION=	0.15.0
DISTNAME=	gmpc-coveramazon-${VERSION}
CATEGORIES=	audio

MAINTAINER=	Landry Breuil <gaston@gcu.info>

HOMEPAGE=	http://sarine.nl/amazon-provider

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.sarine.nl/gmpc-${VERSION}/plugins/ \
			http://humppa.nl/distfiles/gmpc/

WANTLIB=		X11 Xau Xdmcp Xrender atk-1.0 cairo expat fontconfig \
			freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
			gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			png z

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		xml2.>=9::textproc/libxml \
			mpd.>=0::audio/libmpd \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
