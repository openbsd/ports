# $OpenBSD: Makefile,v 1.1.1.1 2003/04/09 23:55:37 espie Exp $

COMMENT=	'digital camera command-line interface'
CATEGORIES=	graphics

MAINTAINER=	Marc Espie <espie@openbsd.org>, Arnaud Launay <asl@launay.org>

DISTNAME=	gphoto2-2.1.1
PKGNAME=	gphoto-2.1.1

HOMEPAGE=http://gphoto.sourceforge.net/

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		simple
CONFIGURE_ARGS=		--disable-nls --without-aalib
MAKE_FLAGS=		gphoto2_LDFLAGS=
FAKE_FLAGS=		gphoto2_LDFLAGS= DESTDIR=${WRKINST}

LIB_DEPENDS=	gphoto2,gphoto2_port::graphics/libgphoto2 \
		jpeg::graphics/jpeg \
		popt::devel/popt

.include <bsd.port.mk>
