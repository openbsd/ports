# $OpenBSD: Makefile,v 1.8 2019/09/11 02:18:52 gsoares Exp $

COMMENT=	base framework for frame crafting

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-Frame-1.21
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Socket6 \
		net/p5-Net-IPv6Addr \
		devel/p5-Class-Gomor \
		math/p5-Bit-Vector

MODCPAN_EXAMPLES=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
