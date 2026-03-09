COMMENT=	lightweight HTTP/SSL proxy

V=		1.11.3
DISTNAME=	tinyproxy-$V
CATEGORIES=	www net

HOMEPAGE=	https://tinyproxy.github.io/
SITES=		https://github.com/tinyproxy/tinyproxy/releases/download/$V/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

AUTOCONF_VERSION= 2.71
CONFIGURE_STYLE= autoconf

BUILD_DEPENDS=	devel/gperf
SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
