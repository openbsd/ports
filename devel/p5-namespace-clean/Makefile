# $OpenBSD: Makefile,v 1.12 2014/03/22 14:06:58 jasper Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
DISTNAME =	namespace-clean-0.25
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope>=0.13 \
		devel/p5-Package-Stash \
		devel/p5-Sub-Identify \
		devel/p5-Sub-Name
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
