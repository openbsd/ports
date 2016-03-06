# $OpenBSD: Makefile,v 1.17 2016/03/06 11:48:03 sthen Exp $

COMMENT= 	find memory cycles in objects

MODULES=	cpan

DISTNAME=	Devel-Cycle-1.12
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

# not listed in META.yml but used if code closures are detected
RUN_DEPENDS=	devel/p5-PadWalker

.include <bsd.port.mk>
