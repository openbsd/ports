# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:29 naddy Exp $

COMMENT=		the Illicit Love Child of Moose and POE

DISTNAME=		MooseX-POE-0.213

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-POE

TEST_DEPENDS=		devel/p5-Class-Load \
			devel/p5-Devel-GlobalDestruction \
			devel/p5-Test-Fatal \
			devel/p5-Module-Runtime \
			devel/p5-MooseX-Declare>=0.35 \
			devel/p5-MRO-Compat

.include <bsd.port.mk>
