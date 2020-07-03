# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:36 sthen Exp $

COMMENT =	DBI wrapper intended to Do What I Want

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	DBIx-DWIW-0.50
CATEGORIES =	databases
REVISION =	0

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
