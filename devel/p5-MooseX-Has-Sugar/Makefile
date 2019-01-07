# $OpenBSD: Makefile,v 1.9 2019/01/07 02:23:13 afresh1 Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-1.000006
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
TEST_DEPENDS=		devel/p5-Test-Fatal

.include <bsd.port.mk>
