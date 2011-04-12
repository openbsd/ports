# $OpenBSD: Makefile,v 1.5 2011/04/12 11:36:12 jasper Exp $

COMMENT=		method declarations with type constraints

DISTNAME=		MooseX-Method-Signatures-0.36

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Context-Preserve \
			devel/p5-Devel-Declare \
			devel/p5-MooseX-LazyRequire>=0.06 \
			devel/p5-MooseX-Meta-TypeConstraint-ForceCoercion \
			devel/p5-MooseX-Types-Structured>=0.26 \
			devel/p5-Parse-Method-Signatures \
			devel/p5-aliased \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
