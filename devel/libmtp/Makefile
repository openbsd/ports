# $OpenBSD: Makefile,v 1.11 2009/06/03 17:13:28 jasper Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-0.2.6.1
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		mtp	3.0	# .8.0
CATEGORIES=		devel

HOMEPAGE=		http://libmtp.sourceforge.net/

MAINTAINER=		William Yodlowsky <william@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libmtp/}

MODULES=		converters/libiconv
LIB_DEPENDS=		usb.>=8::devel/libusb

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
