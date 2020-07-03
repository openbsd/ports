# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:16 sthen Exp $

COMMENT =	write tests in a declarative specification style
DISTNAME =	Test-Spec-0.54
CATEGORIES =	devel
PKG_ARCH =	*
REVISION =	0

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes
MODULES =		cpan

RUN_DEPENDS =	devel/p5-Package-Stash>=0.23 \
		devel/p5-Test-Deep>=0.103 \
		devel/p5-Test-Trap \
		devel/p5-Tie-IxHash

# Poorly written tests don't notice a missing
# devel/p5-Devel-GlobalPhase, so didn't port it

.include <bsd.port.mk>
