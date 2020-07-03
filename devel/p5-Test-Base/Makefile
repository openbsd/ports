# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:12 sthen Exp $

COMMENT= 	data driven test framework

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Base-0.89
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Spiffy>=0.40

TEST_DEPENDS=	devel/p5-Algorithm-Diff>=1.15 \
		devel/p5-Test-Deep \
		textproc/p5-Text-Diff>=0.35

.include <bsd.port.mk>
