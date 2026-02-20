COMMENT=	SSH remote version scanner

V=		2.1.4
DISTNAME=	scanssh-$V

CATEGORIES=	security

HOMEPAGE=	https://www.monkey.org/~provos/scanssh/
SITES=		https://github.com/ofalk/scanssh/releases/download/$V/

PERMIT_PACKAGE=	Yes

WANTLIB=	c event pcap dnet>=1

LIB_DEPENDS=	net/libdnet

CONFIGURE_STYLE= gnu

SEPARATE_BUILD=	Yes
MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wall"

NO_TEST=	Yes

.include <bsd.port.mk>
