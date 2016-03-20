# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:32 naddy Exp $

COMMENT=		perl6-like method signature parser

DISTNAME =		Parse-Method-Signatures-1.003016

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

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
