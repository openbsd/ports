# $OpenBSD: Makefile,v 1.5 2013/03/11 02:52:06 espie Exp $

COMMENT =	DBI wrapper intended to Do What I Want

MODULES =	cpan

DISTNAME =	DBIx-DWIW-0.48
REVISION =	0
CATEGORIES =	databases
USE_GROFF =	Yes

MAINTAINER =	Pierre-Emmanuel Andre <pea@raveland.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
