# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:04 espie Exp $

COMMENT =	Moose minus the antlers

MODULES =	cpan
DISTNAME =	Mouse-0.24
CATEGORIES =	devel
USE_GROFF =	Yes

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
