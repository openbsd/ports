# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:37 sthen Exp $

COMMENT=	base framework for frame crafting

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-Frame-1.12
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Socket6 \
		net/p5-Net-IPv6Addr \
		devel/p5-Class-Gomor \
		math/p5-Bit-Vector
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
