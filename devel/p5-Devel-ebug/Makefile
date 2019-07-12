# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:52 sthen Exp $

COMMENT =	simple, extensible Perl debugger

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Devel-ebug-0.59
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS=	devel/p5-PadWalker \
		devel/p5-YAML \
		textproc/p5-String-Koremutake \
		devel/p5-Test-Expect \
		devel/p5-Proc-Background \
		devel/p5-Devel-StackTrace

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Error \
		devel/p5-Test-Pod

.include <bsd.port.mk>
