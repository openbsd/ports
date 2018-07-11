# $OpenBSD: Makefile,v 1.3 2018/07/11 15:36:55 gonzalo Exp $

COMMENT=	tool to measure maximum achievable bandwidth on IP networks

V=		3.6
PKGNAME=	iperf3-${V}

GH_ACCOUNT=	esnet
GH_PROJECT=	iperf
GH_TAGNAME=	${V}

SHARED_LIBS +=	iperf                0.0      # 0.0

CATEGORIES=	net

HOMEPAGE=	http://software.es.net/iperf/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl

MASTER_SITES=	${MASTER_SITES_GITHUB}

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
