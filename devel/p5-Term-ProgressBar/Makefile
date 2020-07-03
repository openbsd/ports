# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:11 sthen Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Term-ProgressBar-2.22
CATEGORIES=		devel
REVISION=		0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Class-MethodMaker>=1.02

TEST_DEPENDS=		devel/p5-Test-Exception>=0.31 \
			devel/p5-Test-Warnings \
			sysutils/p5-Capture-Tiny>=0.13

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
