# $OpenBSD: Makefile,v 1.10 2015/01/18 10:24:30 benoit Exp $

COMMENT=		method declarations with type constraints

DISTNAME=		MooseX-Method-Signatures-0.48

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
			devel/p5-Task-Weaken \
			devel/p5-aliased \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Fatal

.include <bsd.port.mk>
