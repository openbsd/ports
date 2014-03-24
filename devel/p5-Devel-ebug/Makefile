# $OpenBSD: Makefile,v 1.6 2014/03/24 08:25:35 jasper Exp $

COMMENT =	simple, extensible Perl debugger

MODULES =	cpan
DISTNAME =	Devel-ebug-0.55
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild
USE_GROFF =	Yes

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
