# $OpenBSD: Makefile,v 1.1.1.1 2015/11/12 15:18:47 sthen Exp $

COMMENT=	C library to validate an Yubikey OTP against API servers

YK_PROJECT=	yubico-c-client
DISTNAME=	ykclient-2.15

SHARED_LIBS +=	ykclient             0.0      # 9.0

CATEGORIES=	security devel

WANTLIB += c crypto curl idn nghttp2 ssl z

MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=	net/curl

.include <bsd.port.mk>
