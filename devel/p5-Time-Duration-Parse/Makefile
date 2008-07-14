# $OpenBSD: Makefile,v 1.2 2008/07/14 13:57:04 dhill Exp $

COMMENT =	parse strings that represent time durations

DISTNAME =	Time-Duration-Parse-0.06
CATEGORIES =	devel
MODULES =	cpan

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Exporter-Lite

REGRESS_DEPENDS =	::devel/p5-Time-Duration

.include <bsd.port.mk>
