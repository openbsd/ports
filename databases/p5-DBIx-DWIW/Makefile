# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:56 sthen Exp $

COMMENT =	DBI wrapper intended to Do What I Want

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	DBIx-DWIW-0.50
CATEGORIES =	databases

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
