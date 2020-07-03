# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:48 sthen Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		PPI-1.270
CATEGORIES=		textproc
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Clone>=0.30 \
			devel/p5-IO-String>=1.07 \
			devel/p5-Params-Util>=1.00 \
			devel/p5-Task-Weaken
TEST_DEPENDS=		devel/p5-Class-Inspector>=1.22 \
			devel/p5-Test-Deep \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Object>=0.07 \
			devel/p5-Test-SubCalls>=1.07

# Missed dependency in META
TEST_DEPENDS +=		devel/p5-Hook-LexWrap

.include <bsd.port.mk>
