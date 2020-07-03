# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:50 sthen Exp $

COMMENT =	simple, extensible Perl debugger

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Devel-ebug-0.59
CATEGORIES =	devel
REVISION =	0

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
