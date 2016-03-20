# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:10 naddy Exp $

COMMENT =	DBI wrapper intended to Do What I Want

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	DBIx-DWIW-0.50
CATEGORIES =	databases

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
