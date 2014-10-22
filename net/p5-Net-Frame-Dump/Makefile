# $OpenBSD: Makefile,v 1.3 2014/10/22 13:44:44 jasper Exp $

COMMENT=	base-class for a tcpdump-like implementation

MODULES=	cpan
DISTNAME=	Net-Frame-Dump-1.09
REVISION=	0
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Gomor \
		net/p5-Net-Frame \
		net/p5-Net-Pcap
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
