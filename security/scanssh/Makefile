COMMENT=	SSH remote version scanner

GH_ACCOUNT=	ofalk
GH_PROJECT=	scanssh
GH_TAGNAME=	2.1.3.1

CATEGORIES=	security

HOMEPAGE=	https://www.monkey.org/~provos/scanssh/

PERMIT_PACKAGE=	Yes

WANTLIB=	c event pcap dnet>=1

LIB_DEPENDS=	net/libdnet

CONFIGURE_STYLE=	autoreconf
AUTOMAKE_VERSION=	1.16
AUTOCONF_VERSION=	2.71

SEPARATE_BUILD=	Yes
MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wall"

NO_TEST=	Yes

.include <bsd.port.mk>
