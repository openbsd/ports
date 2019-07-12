# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:51 sthen Exp $

COMMENT= 	find memory cycles in objects

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Devel-Cycle-1.12
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

# not listed in META.yml but used if code closures are detected
RUN_DEPENDS=	devel/p5-PadWalker

.include <bsd.port.mk>
