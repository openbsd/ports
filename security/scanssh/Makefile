COMMENT=	SSH remote version scanner

DISTNAME=	scanssh-2.1
REVISION =	4
CATEGORIES=	security
MASTER_SITES=	https://monkey.org/~provos/

HOMEPAGE=	https://www.monkey.org/~provos/scanssh/

PERMIT_PACKAGE=	Yes
WANTLIB=		c event pcap dnet>=1

LIB_DEPENDS=	net/libdnet

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
