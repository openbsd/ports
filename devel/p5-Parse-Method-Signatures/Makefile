# $OpenBSD: Makefile,v 1.4 2010/10/18 17:48:05 espie Exp $

COMMENT=		perl6 like method signature parser

DISTNAME=		Parse-Method-Signatures-1.003013
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-List-MoreUtils \
			::devel/p5-MooseX-Traits \
			::devel/p5-MooseX-Types-Structured \
			::devel/p5-Test-Differences \
			::devel/p5-aliased \
			::devel/p5-namespace-clean \
			::textproc/p5-PPI
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
