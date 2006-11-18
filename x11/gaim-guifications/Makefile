# $OpenBSD: Makefile,v 1.1.1.1 2006/11/18 16:38:17 alek Exp $

COMMENT=	"MSN style 'toaster' popups plugin for Gaim"

DISTNAME=	gaim-guifications-2.13beta3
CATEGORIES=	x11

HOMEPAGE=	http://guifications.sourceforge.net/Guifications/

MAINTAINER=	Thomas Wood <grand.edgemaster@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	glib-2.0 X11 Xext Xrender glitz atk-1.0 fontconfig \
		freetype cairo gmodule-2.0 gobject-2.0 m pango-1.0 \
		png z pangoft2-1.0 gdk-x11-2.0 pangocairo-1.0 \
		gtk-x11-2.0 gdk_pixbuf-2.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=guifications/}

MODULES=	devel/gettext
BUILD_DEPENDS=	:gaim-*:net/gaim \
		:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=	:gaim-*:net/gaim

CONFIGURE_STYLE=gnu

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
