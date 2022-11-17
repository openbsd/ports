COMMENT=	tool to measure maximum achievable bandwidth on IP networks

V=		3.12
PKGNAME=	iperf3-${V}
DISTNAME=	iperf-${V}

SHARED_LIBS +=	iperf                2.0      # 0.0

CATEGORIES=	net

HOMEPAGE=	https://software.es.net/iperf/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE=	Yes

WANTLIB += c m

MASTER_SITES=	https://downloads.es.net/pub/iperf/

AUTOCONF_VERSION=	2.71

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	 --with-openssl=no

.include <bsd.port.mk>
