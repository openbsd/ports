# $OpenBSD: Makefile,v 1.25 2015/11/12 14:08:49 sthen Exp $

COMMENT=	library and tools to program YubiKeys

DISTNAME=	ykpers-1.17.2
REVISION=	0

SHARED_LIBS +=	ykpers-1                  0.5 # 18.2

CATEGORIES=	sysutils security

HOMEPAGE=	https://developers.yubico.com/yubikey-personalization/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c json-c pthread usb-1.0 yubikey

MASTER_SITES=	https://developers.yubico.com/yubikey-personalization/Releases/

LIB_DEPENDS=	devel/json-c \
		devel/libusb1>=1.0.9p1 \
		devel/libyubikey

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
