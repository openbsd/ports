# $OpenBSD: Makefile,v 1.4 2009/06/19 10:45:07 simon Exp $

COMMENT =	Moose minus the antlers

MODULES =	cpan
DISTNAME =	Mouse-0.24
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	SARTAK

RUN_DEPENDS =	::devel/p5-Class-Method-Modifiers
BUILD_DEPENDS =	${RUN_DEPENDS}
REGRESS_DEPENDS = ::devel/p5-Test-Exception

.include <bsd.port.mk>
