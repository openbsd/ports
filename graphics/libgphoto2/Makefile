# $OpenBSD: Makefile,v 1.5 2004/11/30 01:06:37 espie Exp $

COMMENT=	'digital camera library'
CATEGORIES=	graphics devel

MAINTAINER=	Marc Espie <espie@openbsd.org>, Arnaud Launay <asl@launay.org>

VERSION=	2.1.4
DISTNAME=	libgphoto2-${VERSION}
PKGNAME=	libgphoto-${VERSION}

HOMEPAGE=	http://gphoto.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		iconv intl m

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.57
SEPARATE_BUILD=		simple
CONFIGURE_ARGS=		--disable-nls
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION

LIB_DEPENDS=		exif::graphics/libexif \
			jpeg::graphics/jpeg \
			usb::devel/libusb
BUILD_DEPENDS=		::devel/pkgconfig

.include <bsd.port.mk>
