# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:10 espie Exp $

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

RUN_DEPENDS =	::devel/p5-B-Hooks-EndOfScope \
		::devel/p5-Class-MOP \
		::devel/p5-namespace-clean

REGRESS_DEPENDS = ::devel/p5-Moose

.include <bsd.port.mk>
