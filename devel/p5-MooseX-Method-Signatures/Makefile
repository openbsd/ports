# $OpenBSD: Makefile,v 1.1.1.1 2010/01/12 09:43:48 jasper Exp $

COMMENT=		method declarations with type constraints

DISTNAME=		MooseX-Method-Signatures-0.29

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-Context-Preserve \
			::devel/p5-Devel-Declare \
			::devel/p5-MooseX-LazyRequire \
			::devel/p5-MooseX-Meta-TypeConstraint-ForceCoercion \
			::devel/p5-Parse-Method-Signatures \
			::devel/p5-aliased \
			::devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
