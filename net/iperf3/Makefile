COMMENT=	tool to measure maximum achievable bandwidth on IP networks

V=		3.17.1
DISTNAME=	iperf-${V}
PKGNAME=	iperf3-${V}

SHARED_LIBS +=	iperf                4.0      # 0.0

CATEGORIES=	net

HOMEPAGE=	https://software.es.net/iperf/

# BSD 3-clause
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

# uses pledge unveil
WANTLIB += c m pthread

SITES=		https://downloads.es.net/pub/iperf/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --with-openssl=no

.include <bsd.port.mk>
