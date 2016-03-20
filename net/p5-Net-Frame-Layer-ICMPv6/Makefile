# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:52 naddy Exp $

COMMENT=	ICMP v6 layer object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Frame-Layer-ICMPv6-1.06
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-Frame
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
