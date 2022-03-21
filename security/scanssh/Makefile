COMMENT=	SSH remote version scanner

GH_ACCOUNT=	ofalk
GH_PROJECT=	scanssh
GH_TAGNAME=	2.1.2

CATEGORIES=	security

HOMEPAGE=	https://www.monkey.org/~provos/scanssh/

PERMIT_PACKAGE=	Yes
WANTLIB=		c event pcap dnet>=1

LIB_DEPENDS=	net/libdnet

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wall"

NO_TEST=	Yes

.include <bsd.port.mk>
