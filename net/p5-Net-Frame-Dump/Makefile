# $OpenBSD: Makefile,v 1.7 2019/09/11 02:03:33 gsoares Exp $

COMMENT=	base-class for a tcpdump-like implementation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-Frame-Dump-1.17
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Gomor \
		net/p5-Net-Frame \
		net/p5-Net-Pcap

MODCPAN_EXAMPLES=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
