# $OpenBSD: Makefile,v 1.4 2015/01/23 22:13:34 benoit Exp $

COMMENT=	base-class for a tcpdump-like implementation

MODULES=	cpan
DISTNAME =	Net-Frame-Dump-1.14
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
