# $OpenBSD: Makefile,v 1.6 2019/09/11 01:58:08 gsoares Exp $

COMMENT=	ICMP v6 layer object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Frame-Layer-ICMPv6-1.11
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-Frame

MODCPAN_EXAMPLES=	Yes

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
