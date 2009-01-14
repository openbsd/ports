# $OpenBSD: Makefile,v 1.2 2009/01/14 18:17:33 simon Exp $

COMMENT =	Moose minus the antlers

MODULES =	cpan
DISTNAME =	Mouse-0.14
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	SARTAK

RUN_DEPENDS =	::devel/p5-Sub-Exporter \
		::devel/p5-MRO-Compat \
		::devel/p5-Class-Method-Modifiers
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
