# $OpenBSD: Makefile,v 1.2 2010/10/18 17:06:08 espie Exp $

COMMENT =	DBI wrapper intended to Do What I Want

MODULES =	cpan

DISTNAME =	DBIx-DWIW-0.48
CATEGORIES =	databases
USE_GROFF =	Yes

MAINTAINER =	Pierre-Emmanuel Andre <pea@raveland.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::databases/p5-DBI \
		::databases/p5-DBD-mysql

.include <bsd.port.mk>
