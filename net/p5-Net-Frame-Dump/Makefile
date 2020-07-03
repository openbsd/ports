# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:33 sthen Exp $

COMMENT=	base-class for a tcpdump-like implementation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-Frame-Dump-1.17
CATEGORIES=	net
REVISION =	0

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Gomor \
		net/p5-Net-Frame \
		net/p5-Net-Pcap

MODCPAN_EXAMPLES=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
