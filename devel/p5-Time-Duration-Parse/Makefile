# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:09 espie Exp $

COMMENT =	parse strings that represent time durations

DISTNAME =	Time-Duration-Parse-0.06
CATEGORIES =	devel
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Exporter-Lite

REGRESS_DEPENDS =	::devel/p5-Time-Duration

.include <bsd.port.mk>
