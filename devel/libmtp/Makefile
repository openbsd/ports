# $OpenBSD: Makefile,v 1.3 2007/02/02 14:25:28 jasper Exp $

COMMENT=		"Media Transfer Protocol (MTP) implementation"

DISTNAME=		libmtp-0.1.3
SHARED_LIBS=		mtp	1.0	# .6.0
CATEGORIES=		devel

HOMEPAGE=		http://libmtp.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libmtp/}

LIB_DEPENDS=		iconv.>=4::converters/libiconv \
			usb.>=8::devel/libusb

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
