# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:42 naddy Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	namespace-clean-0.26
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Package-Stash \
		devel/p5-Sub-Name

BUILD_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Package-Stash

.include <bsd.port.mk>
