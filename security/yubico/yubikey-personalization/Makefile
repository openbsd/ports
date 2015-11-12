# $OpenBSD: Makefile,v 1.1.1.1 2015/11/12 15:18:47 sthen Exp $

COMMENT=	library and tools to program YubiKeys

YK_PROJECT=	yubikey-personalization
DISTNAME=	ykpers-1.17.2
REVISION=	1

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
