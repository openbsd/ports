COMMENT=	tool to measure maximum achievable bandwidth on IP networks

V=		3.15
REVISION=	0
PKGNAME=	iperf3-${V}
DISTNAME=	iperf-${V}

SHARED_LIBS +=	iperf                3.0      # 0.0

CATEGORIES=	net

HOMEPAGE=	https://software.es.net/iperf/

# BSD 3-clause
PERMIT_PACKAGE=	Yes

# uses pledge unveil
WANTLIB += c m

SITES=		https://downloads.es.net/pub/iperf/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --with-openssl=no

.include <bsd.port.mk>
