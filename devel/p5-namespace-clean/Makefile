# $OpenBSD: Makefile,v 1.14 2015/11/18 13:15:02 ajacoutot Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
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
