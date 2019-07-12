# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:01 sthen Exp $

COMMENT=		method declarations with type constraints

DISTNAME=		MooseX-Method-Signatures-0.49

CATEGORIES=		devel

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=		*

RUN_DEPENDS=	devel/p5-B-Hooks-EndOfScope>=0.10 \
		devel/p5-Context-Preserve \
		devel/p5-Devel-Declare>=0.005011 \
		devel/p5-Eval-Closure \
		devel/p5-Module-Runtime>=0.012 \
		devel/p5-Moose \
		devel/p5-MooseX-LazyRequire>=0.06 \
		devel/p5-MooseX-Meta-TypeConstraint-ForceCoercion \
		devel/p5-MooseX-Types-Structured>=0.24 \
		devel/p5-MooseX-Types>=0.19 \
		devel/p5-Parse-Method-Signatures \
		devel/p5-Sub-Name \
		devel/p5-Task-Weaken \
		devel/p5-aliased \
		devel/p5-namespace-autoclean

TEST_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-Fatal \
		devel/p5-namespace-clean>=0.19

CONFIGURE_STYLE=	modbuild tiny

.include <bsd.port.mk>
