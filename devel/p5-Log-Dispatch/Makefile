# $OpenBSD: Makefile,v 1.18 2015/09/21 06:43:26 benoit Exp $

COMMENT =	dispatches messages to one or more outputs

MODULES =	cpan
DISTNAME =	Log-Dispatch-2.51
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime \
		devel/p5-Dist-CheckConflicts \
		devel/p5-Params-Validate

TEST_DEPENDS =	devel/p5-File-Find-Rule \
		devel/p5-Test-Requires \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
