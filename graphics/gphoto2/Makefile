# $OpenBSD: Makefile,v 1.7 2006/11/13 11:20:24 steven Exp $

COMMENT=	'digital camera command-line interface'
CATEGORIES=	graphics

MAINTAINER=	Marc Espie <espie@openbsd.org>, Arnaud Launay <asl@launay.org>

VERSION=	2.1.5
DISTNAME=	gphoto2-${VERSION}
PKGNAME=	gphoto-${VERSION}

HOMEPAGE=	http://gphoto.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c exif m ncurses readline

USE_X11=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.57
SEPARATE_BUILD=		simple
CONFIGURE_ARGS=		--disable-nls --without-aalib --without-cdk

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gphoto2,gphoto2_port::graphics/libgphoto2 \
		jpeg::graphics/jpeg \
		popt::devel/popt

.include <bsd.port.mk>
