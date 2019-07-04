# $OpenBSD: Makefile,v 1.11 2019/07/04 13:41:37 sthen Exp $

COMMENT=	library and tools to program YubiKeys

YK_PROJECT=	yubikey-personalization
DISTNAME=	ykpers-1.20.0

SHARED_LIBS +=	ykpers-1                  0.8 # 20.0

CATEGORIES=	sysutils

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

WANTLIB += c json-c pthread usb-1.0 yubikey

LIB_DEPENDS=	devel/json-c \
		devel/libusb1>=1.0.9p1 \
		security/yubico/yubico-c

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
