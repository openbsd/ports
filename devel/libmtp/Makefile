# $OpenBSD: Makefile,v 1.17 2010/12/23 16:36:16 jasper Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-1.0.3
REVISION=		1
SHARED_LIBS=		mtp	4.0
CATEGORIES=		devel

HOMEPAGE=		http://libmtp.sourceforge.net/

MAINTAINER=		William Yodlowsky <william@openbsd.org>

# LGPLv2.1
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
