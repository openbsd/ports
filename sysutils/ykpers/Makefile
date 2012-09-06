# $OpenBSD: Makefile,v 1.2 2012/09/06 10:04:46 sthen Exp $

COMMENT=	library and tool to program YubiKeys

DISTNAME=	ykpers-1.7.0
REVISION=	0

SHARED_LIBS +=	ykpers-1                  0.0 # 7.3

CATEGORIES=	sysutils

HOMEPAGE=	http://code.google.com/p/yubikey-personalization/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c pthread usb-1.0 yubikey

MASTER_SITES=	http://yubikey-personalization.googlecode.com/files/

LIB_DEPENDS=	devel/libyubikey \
		devel/libusb1>=1.0.9p1

SEPARATE_BUILD=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
