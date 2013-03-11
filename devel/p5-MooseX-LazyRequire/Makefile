# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:19 espie Exp $

COMMENT=		required attributes which fail only when trying to use them

DISTNAME=		MooseX-LazyRequire-0.07

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-aliased \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
