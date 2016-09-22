# $OpenBSD: Makefile,v 1.2 2016/09/22 02:13:18 lteo Exp $

COMMENT=	tool to measure maximum achievable bandwidth on IP networks

V=		3.1.3
PKGNAME=	iperf3-${V}
REVISION=	0

GH_ACCOUNT=	esnet
GH_PROJECT=	iperf
GH_TAGNAME=	${V}

SHARED_LIBS +=	iperf                0.0      # 0.0

CATEGORIES=	net

HOMEPAGE=	http://software.es.net/iperf/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m

MASTER_SITES=	${MASTER_SITES_GITHUB}

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
