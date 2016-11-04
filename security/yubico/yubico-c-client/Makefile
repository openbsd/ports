# $OpenBSD: Makefile,v 1.3 2016/11/04 11:35:20 sthen Exp $

COMMENT=	C library to validate an Yubikey OTP against API servers

YK_PROJECT=	yubico-c-client
DISTNAME=	ykclient-2.15
REVISION=	0

SHARED_LIBS +=	ykclient             0.0      # 9.0

CATEGORIES=	security devel

WANTLIB += c crypto curl nghttp2 ssl z

MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	net/curl

.include <bsd.port.mk>
