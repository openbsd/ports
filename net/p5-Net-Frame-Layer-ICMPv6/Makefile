# $OpenBSD: Makefile,v 1.5 2019/07/12 20:48:37 sthen Exp $

COMMENT=	ICMP v6 layer object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Frame-Layer-ICMPv6-1.06
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-Frame
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
