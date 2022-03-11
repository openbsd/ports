COMMENT=	client for MikroTik's "L2 telnet" protocol#'

GH_ACCOUNT=	haakonnessjoen
GH_PROJECT=	MAC-Telnet
GH_TAGNAME=	v0.4.4
PKGNAME=	${DISTNAME:L}
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	http://lunatic.no/2010/10/routeros-mac-telnet-application-for-linux-users/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

BUILD_DEPENDS=	devel/gettext,-tools

SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--disable-nls

CONFIGURE_STYLE=  autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
AUTORECONF=	  ./autogen.sh

post-install:
	rm ${WRKINST}/etc/mactelnetd.users ${PREFIX}/man/man1/mactelnetd.1

.include <bsd.port.mk>
