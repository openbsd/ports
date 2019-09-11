# $OpenBSD: Makefile,v 1.7 2019/09/11 02:14:08 gsoares Exp $

COMMENT=	Internet Protocol v6 layer object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Frame-Layer-IPv6-1.08
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-Frame

MODCPAN_EXAMPLES=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
