COMMENT=	library and tools to program YubiKeys

YK_PROJECT=	yubikey-personalization
DISTNAME=	ykpers-1.20.0
REVISION=	1

SHARED_LIBS +=	ykpers-1                  0.8 # 20.0

CATEGORIES=	sysutils

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

WANTLIB += c json-c pthread usb-1.0 yubikey

LIB_DEPENDS=	devel/json-c \
		devel/libusb1>=1.0.9p1 \
		security/yubico/yubico-c

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
