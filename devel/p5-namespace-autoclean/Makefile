# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:07 espie Exp $

COMMENT =	keep imports out of your namespace

MODULES =	cpan
DISTNAME =	namespace-autoclean-0.09
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Class-MOP \
		devel/p5-namespace-clean

REGRESS_DEPENDS = devel/p5-Moose

.include <bsd.port.mk>
