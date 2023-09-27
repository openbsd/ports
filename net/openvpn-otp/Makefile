COMMENT=		OpenVPN OTP Authentication support

GH_ACCOUNT=		evgeny-gridasov
GH_PROJECT=		openvpn-otp
GH_COMMIT=		47f8ccf50c0933742847e657c4be9f5ba796c1a4
DISTNAME=		openvpn-otp-1.0pl0

CATEGORIES=		net

# GPLv3, parts are Apache 2.0
PERMIT_PACKAGE=		Yes

SEPARATE_BUILD=		Yes

WANTLIB=		crypto
BUILD_DEPENDS=		net/openvpn

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		${WRKSRC}/autogen.sh
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

LIBTOOL_FLAGS=		--tag=disable-static

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
