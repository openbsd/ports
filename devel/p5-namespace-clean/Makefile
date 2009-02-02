# $OpenBSD: Makefile,v 1.2 2009/02/02 15:10:52 simon Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
DISTNAME =	namespace-clean-0.09
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-B-Hooks-EndOfScope
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
