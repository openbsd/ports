# $OpenBSD: Makefile,v 1.19 2012/04/01 21:05:20 sthen Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-1.0.3
REVISION=		3
SHARED_LIBS=		mtp	4.0
CATEGORIES=		devel

HOMEPAGE=		http://libmtp.sourceforge.net/

MAINTAINER=		William Yodlowsky <william@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c usb pthread usb-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libmtp/}

MODULES=		converters/libiconv
BUILD_DEPENDS=		devel/doxygen
MAKE_ENV+=		DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC}
LIB_DEPENDS=		devel/libusb-compat

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS+=		pkgdocdir="${PREFIX}/share/doc/libmtp/"

.include <bsd.port.mk>
