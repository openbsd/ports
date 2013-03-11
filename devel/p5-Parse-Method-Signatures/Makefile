# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:20 espie Exp $

COMMENT=		perl6-like method signature parser

DISTNAME=		Parse-Method-Signatures-1.003014

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-MooseX-Traits \
			devel/p5-MooseX-Types-Structured \
			devel/p5-namespace-clean \
			textproc/p5-PPI
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-aliased \
			devel/p5-Test-Differences \
			devel/p5-Test-Exception

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
