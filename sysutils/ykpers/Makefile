# $OpenBSD: Makefile,v 1.19 2015/03/14 21:09:09 sthen Exp $

COMMENT=	library and tools to program YubiKeys
BROKEN-hppa=	ykpers-json.c:42: error: redefinition of typedef 'json_bool'

DISTNAME=	ykpers-1.16.3

SHARED_LIBS +=	ykpers-1                  0.4 # 17.0

CATEGORIES=	sysutils security

HOMEPAGE=	http://yubico.github.io/yubikey-personalization/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c json-c pthread usb-1.0 yubikey

MASTER_SITES=	http://yubico.github.io/yubikey-personalization/releases/

LIB_DEPENDS=	devel/json-c \
		devel/libusb1>=1.0.9p1 \
		devel/libyubikey \

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
