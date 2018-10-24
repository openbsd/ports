# $OpenBSD: Makefile,v 1.12 2018/10/24 21:34:32 afresh1 Exp $

COMMENT= 	data driven test framework

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Base-0.89
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Spiffy>=0.40

TEST_DEPENDS=	devel/p5-Algorithm-Diff>=1.15 \
		devel/p5-Test-Deep \
		textproc/p5-Text-Diff>=0.35

.include <bsd.port.mk>
