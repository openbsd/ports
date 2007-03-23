# $OpenBSD: Makefile,v 1.4 2007/03/23 23:43:31 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"Amazon cover art provider for gmpc"

VERSION=	0.14.0
DISTNAME=	gmpc-coveramazon-${VERSION}
CATEGORIES=	audio

HOMEPAGE=	http://cms.qballcow.nl/index.php?page=Plugins

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.sarine.nl/gmpc-${VERSION}/plugins/

WANTLIB=		ICE SM X11 Xext Xrender atk-1.0 cairo fontconfig \
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
