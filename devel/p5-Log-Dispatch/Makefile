# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:27 naddy Exp $

COMMENT =	dispatches messages to one or more outputs

MODULES =	cpan
PKG_ARCH =	*
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
