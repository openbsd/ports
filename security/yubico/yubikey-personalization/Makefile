# $OpenBSD: Makefile,v 1.4 2017/02/07 14:42:44 sthen Exp $

COMMENT=	library and tools to program YubiKeys

YK_PROJECT=	yubikey-personalization
DISTNAME=	ykpers-1.18.0

SHARED_LIBS +=	ykpers-1                  0.6 # 19.0

CATEGORIES=	sysutils

WANTLIB += c json-c pthread usb-1.0 yubikey

LIB_DEPENDS=	devel/json-c \
		devel/libusb1>=1.0.9p1 \
		security/yubico/yubico-c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
