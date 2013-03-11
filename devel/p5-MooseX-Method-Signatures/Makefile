# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:19 espie Exp $

COMMENT=		method declarations with type constraints

DISTNAME=		MooseX-Method-Signatures-0.37

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Context-Preserve \
			devel/p5-Devel-Declare>=0.006007 \
			devel/p5-MooseX-LazyRequire>=0.06 \
			devel/p5-MooseX-Meta-TypeConstraint-ForceCoercion \
			devel/p5-MooseX-Types-Structured>=0.26 \
			devel/p5-Parse-Method-Signatures>=1.003014 \
			devel/p5-aliased \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
