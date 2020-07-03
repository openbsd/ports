# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:33 sthen Exp $

COMMENT=	Internet Protocol v6 layer object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Frame-Layer-IPv6-1.08
CATEGORIES=	net
REVISION=	0

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-Frame

MODCPAN_EXAMPLES=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
