# $OpenBSD: Makefile,v 1.15 2019/07/12 21:02:17 sthen Exp $

COMMENT=		perl6-like method signature parser

DISTNAME =		Parse-Method-Signatures-1.003019

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-MooseX-Traits \
			devel/p5-MooseX-Types-Structured \
			devel/p5-namespace-clean \
			textproc/p5-PPI
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=		devel/p5-aliased \
			devel/p5-Test-Differences \
			devel/p5-Test-Exception

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
