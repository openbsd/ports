# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:24 espie Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
DISTNAME =	namespace-clean-0.22
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope>=0.07 \
		devel/p5-Package-DeprecationManager \
		devel/p5-Package-Stash \
		devel/p5-Sub-Identify \
		devel/p5-Sub-Name
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
