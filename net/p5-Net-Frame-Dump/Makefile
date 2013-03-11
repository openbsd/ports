# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:52 espie Exp $

COMMENT=	base-class for a tcpdump-like implementation

MODULES=	cpan
DISTNAME=	Net-Frame-Dump-1.09
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Gomor \
		net/p5-Net-Frame \
		net/p5-Net-Pcap
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
