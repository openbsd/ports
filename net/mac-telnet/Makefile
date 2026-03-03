COMMENT=	client for MikroTik's "L2 telnet" protocol

GH_ACCOUNT=	haakonnessjoen
GH_PROJECT=	MAC-Telnet
GH_TAGNAME=	v0.6.3
PKGNAME=	${DISTNAME:L}
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://lunatic.no/2010/10/routeros-mac-telnet-application-for-linux-users/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto intl

CONFIGURE_STYLE=  autoreconf
AUTOCONF_VERSION= 2.72
AUTOMAKE_VERSION= 1.18
SEPARATE_BUILD=	Yes

CONFIGURE_ARGS=	--disable-nls \
		--without-mactelnetd

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/gettext,-runtime
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl"

.include <bsd.port.mk>
