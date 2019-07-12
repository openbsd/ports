# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:50 sthen Exp $

COMMENT=	visitor-style traversal of Perl data structures

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Data-Visitor-0.30
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Load>=0.06 \
		devel/p5-Moose>=0.89 \
		devel/p5-Task-Weaken \
		devel/p5-Tie-ToObject>=0.01 \
		devel/p5-namespace-clean>=0.19

TEST_DEPENDS=	devel/p5-Test-Requires \
		devel/p5-Test-Script>=1.05

.include <bsd.port.mk>
