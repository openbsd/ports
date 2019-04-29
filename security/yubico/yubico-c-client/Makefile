# $OpenBSD: Makefile,v 1.6 2019/04/29 16:27:26 sthen Exp $

COMMENT=	C library to validate an Yubikey OTP against API servers

YK_PROJECT=	yubico-c-client
DISTNAME=	ykclient-2.15
REVISION=	2

SHARED_LIBS +=	ykclient             0.0      # 9.0

CATEGORIES=	security devel

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

WANTLIB =  c crypto curl iconv intl nghttp2 pthread ssl z

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	devel/gettext \
		net/curl

.include <bsd.port.mk>
