# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT =	parse strings that represent time durations

DISTNAME =	Time-Duration-Parse-0.06
REVISION =	0
CATEGORIES =	devel
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		devel/p5-Exporter-Lite

REGRESS_DEPENDS =	devel/p5-Time-Duration

.include <bsd.port.mk>
