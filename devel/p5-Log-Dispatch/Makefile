# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:59 sthen Exp $

COMMENT =	dispatches messages to one or more outputs

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Log-Dispatch-2.51
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime \
		devel/p5-Dist-CheckConflicts \
		devel/p5-Params-Validate

TEST_DEPENDS =	devel/p5-File-Find-Rule \
		devel/p5-Test-Requires \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
