# $OpenBSD: Makefile,v 1.7 2014/11/23 19:39:46 benoit Exp $

COMMENT =	simple, extensible Perl debugger

MODULES =	cpan
DISTNAME =	Devel-ebug-0.56
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

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
