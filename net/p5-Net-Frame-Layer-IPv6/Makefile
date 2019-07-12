# $OpenBSD: Makefile,v 1.5 2019/07/12 20:48:37 sthen Exp $

COMMENT=	Internet Protocol v6 layer object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Frame-Layer-IPv6-1.04
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-Frame
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
