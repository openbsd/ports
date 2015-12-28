# $OpenBSD: Makefile,v 1.2 2015/12/28 16:18:09 sthen Exp $

COMMENT=	library and tools to program YubiKeys

YK_PROJECT=	yubikey-personalization
DISTNAME=	ykpers-1.17.3

SHARED_LIBS +=	ykpers-1                  0.5 # 18.2

CATEGORIES=	sysutils

WANTLIB += c json-c pthread usb-1.0 yubikey

LIB_DEPENDS=	devel/json-c \
		devel/libusb1>=1.0.9p1 \
		security/yubico/yubico-c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
