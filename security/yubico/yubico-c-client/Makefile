# $OpenBSD: Makefile,v 1.4 2017/08/31 19:34:56 naddy Exp $

COMMENT=	C library to validate an Yubikey OTP against API servers

YK_PROJECT=	yubico-c-client
DISTNAME=	ykclient-2.15
REVISION=	1

SHARED_LIBS +=	ykclient             0.0      # 9.0

CATEGORIES=	security devel

WANTLIB += c crypto curl nghttp2 pthread ssl z

MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	net/curl

.include <bsd.port.mk>
