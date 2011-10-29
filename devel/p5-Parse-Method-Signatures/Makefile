# $OpenBSD: Makefile,v 1.9 2011/10/29 16:31:26 jasper Exp $

COMMENT=		perl6-like method signature parser

DISTNAME=		Parse-Method-Signatures-1.003014

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-MooseX-Traits \
			devel/p5-MooseX-Types-Structured \
			devel/p5-namespace-clean \
			textproc/p5-PPI
BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_DEPENDS=	devel/p5-aliased \
			devel/p5-Test-Differences \
			devel/p5-Test-Exception

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
