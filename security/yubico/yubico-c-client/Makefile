# $OpenBSD: Makefile,v 1.8 2020/07/11 22:54:39 sthen Exp $

COMMENT=	C library to validate an Yubikey OTP against API servers

YK_PROJECT=	yubico-c-client
DISTNAME=	ykclient-2.15
REVISION=	4

SHARED_LIBS +=	ykclient             0.0      # 9.0

CATEGORIES=	security devel

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

WANTLIB =  c crypto curl iconv intl nghttp2 pthread ssl z

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	devel/gettext,-runtime \
		net/curl

.include <bsd.port.mk>
