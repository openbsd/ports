# $OpenBSD: Makefile,v 1.10 2012/04/06 10:07:20 sthen Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
DISTNAME =	namespace-clean-0.22
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope>=0.07 \
		devel/p5-Package-DeprecationManager \
		devel/p5-Package-Stash \
		devel/p5-Sub-Identify \
		devel/p5-Sub-Name
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
