# $OpenBSD: Makefile,v 1.16 2016/09/02 22:52:09 ajacoutot Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	namespace-clean-0.27
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Package-Stash \
		devel/p5-Sub-Name

BUILD_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Package-Stash

.include <bsd.port.mk>
