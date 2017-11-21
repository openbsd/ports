# $OpenBSD: Makefile,v 1.5 2017/11/21 00:13:03 naddy Exp $

COMMENT=	C library to validate an Yubikey OTP against API servers

YK_PROJECT=	yubico-c-client
DISTNAME=	ykclient-2.15
REVISION=	2

SHARED_LIBS +=	ykclient             0.0      # 9.0

CATEGORIES=	security devel

WANTLIB =  c crypto curl iconv intl nghttp2 pthread ssl z

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	devel/gettext \
		net/curl

.include <bsd.port.mk>
