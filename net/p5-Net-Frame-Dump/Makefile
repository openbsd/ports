# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:37 sthen Exp $

COMMENT=	base-class for a tcpdump-like implementation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-Frame-Dump-1.14
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Gomor \
		net/p5-Net-Frame \
		net/p5-Net-Pcap
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
