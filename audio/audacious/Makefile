# $OpenBSD: Makefile,v 1.1.1.1 2006/12/27 16:46:09 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"GTK+-2 media player based on BMP and XMMS"

DISTNAME=	audacious-1.2.2
SHARED_LIBS=	audacious	4.0
CATEGORIES=	audio

HOMEPAGE=	http://audacious-media-player.org/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}release/
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
NO_REGRESS=	Yes

MODULES=	devel/gettext

WANTLIB=	X11 Xext Xrender fontconfig freetype m z c pthread stdc++ \
		glib-2.0 gthread-2.0 gmodule-2.0 gobject-2.0 gdk_pixbuf-2.0 \
		gdk-x11-2.0 gtk-x11-2.0 atk-1.0 cairo glitz png \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 xml2

LIB_DEPENDS=	glade-2.0.>=0.3::devel/libglade2

MAKE_ENV=	LIBaudacious_VERSION=${LIBaudacious_VERSION}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
