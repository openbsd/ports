# $OpenBSD: Makefile,v 1.1.1.1 2003/04/09 23:55:01 espie Exp $

COMMENT=	'digital camera library'
CATEGORIES=	graphics devel

MAINTAINER=	Marc Espie <espie@openbsd.org>, Arnaud Launay <asl@launay.org>

DISTNAME=	libgphoto2-2.1.1
PKGNAME=	libgphoto-2.1.1

HOMEPAGE=http://gphoto.sourceforge.net/

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.52
SEPARATE_BUILD=		simple
CONFIGURE_ARGS=		--disable-nls

LIB_DEPENDS=		exif::graphics/libexif \
			usb::devel/libusb
BUILD_DEPENDS=		::devel/pkgconfig

.include <bsd.port.mk>
