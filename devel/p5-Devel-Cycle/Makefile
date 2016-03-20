# $OpenBSD: Makefile,v 1.18 2016/03/20 19:56:20 naddy Exp $

COMMENT= 	find memory cycles in objects

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Devel-Cycle-1.12
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

# not listed in META.yml but used if code closures are detected
RUN_DEPENDS=	devel/p5-PadWalker

.include <bsd.port.mk>
