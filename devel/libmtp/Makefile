# $OpenBSD: Makefile,v 1.16 2010/12/23 13:09:00 jasper Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-1.0.3
REVISION=		0
SHARED_LIBS=		mtp	4.0
CATEGORIES=		devel

HOMEPAGE=		http://libmtp.sourceforge.net/

MAINTAINER=		William Yodlowsky <william@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c usb>=8

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libmtp/}

MODULES=		converters/libiconv
BUILD_DEPENDS=		devel/doxygen
LIB_DEPENDS=		devel/libusb

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS+=		pkgdocdir="${PREFIX}/share/doc/libmtp/"

.include <bsd.port.mk>
