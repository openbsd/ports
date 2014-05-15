# $OpenBSD: Makefile,v 1.61 2014/05/15 14:06:18 afresh1 Exp $

SHARED_ONLY =	Yes

COMMENT =	unified perl interface for database access

MODULES =	cpan
DISTNAME =	DBI-1.631
CATEGORIES =	databases

HOMEPAGE =	http://dbi.perl.org/
MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS =	net/p5-PlRPC>=0.2017 \
		databases/p5-SQL-Statement>=1.400 \
		devel/p5-MLDBM

TEST_DEPENDS =	devel/p5-Test-Pod>=1.00

.include <bsd.port.mk>
