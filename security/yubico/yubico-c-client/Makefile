COMMENT=	C library to validate an Yubikey OTP against API servers

YK_PROJECT=	yubico-c-client
DISTNAME=	ykclient-2.15
REVISION=	6

SHARED_LIBS +=	ykclient             0.0      # 9.0

CATEGORIES=	security devel

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

WANTLIB += c crypto curl nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl
WANTLIB += pthread ssl z

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	devel/gettext,-runtime \
		net/curl

.include <bsd.port.mk>
