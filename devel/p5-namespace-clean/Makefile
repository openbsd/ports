# $OpenBSD: Makefile,v 1.18 2020/07/03 21:45:21 sthen Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	namespace-clean-0.27
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Package-Stash \
		devel/p5-Sub-Name

BUILD_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Package-Stash

.include <bsd.port.mk>
