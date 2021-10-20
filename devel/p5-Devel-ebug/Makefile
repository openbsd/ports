# $OpenBSD: Makefile,v 1.13 2021/10/20 05:50:16 benoit Exp $

COMMENT =	simple, extensible Perl debugger

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Devel-ebug-0.64
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Devel-StackTrace>=2.0 \
		devel/p5-Module-Pluggable \
		devel/p5-PadWalker \
		devel/p5-Proc-Background \
		devel/p5-YAML \
		textproc/p5-String-Koremutake

TEST_DEPENDS =	devel/p5-Error \
		devel/p5-Test-Pod

# Avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-Expect \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
