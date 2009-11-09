# $OpenBSD: Makefile,v 1.16 2009/11/09 08:05:16 ajacoutot Exp $

COMMENT=	digital camera command-line interface
CATEGORIES=	graphics

MAINTAINER=	Marc Espie <espie@openbsd.org>

VERSION=	2.4.7
DISTNAME=	gphoto2-${VERSION}
PKGNAME=	gphoto-${VERSION}

HOMEPAGE=	http://gphoto.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=		c exif m ncurses readline ltdl pthread usb

USE_X11=		Yes
USE_LIBTOOL=		Yes

MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-aalib --without-cdk
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

MODULES=	devel/gettext
LIB_DEPENDS=	gphoto2,gphoto2_port::graphics/libgphoto2 \
		jpeg::graphics/jpeg \
		popt::devel/popt

.include <bsd.port.mk>
