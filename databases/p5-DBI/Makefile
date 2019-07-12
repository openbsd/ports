# $OpenBSD: Makefile,v 1.67 2019/07/12 20:43:56 sthen Exp $

COMMENT =	unified perl interface for database access

MODULES =	cpan
DISTNAME =	DBI-1.641
FIX_EXTRACT_PERMISSIONS =	Yes
CATEGORIES =	databases

HOMEPAGE =	http://dbi.perl.org/
MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

RUN_DEPENDS =	net/p5-PlRPC>=0.2017 \
		databases/p5-SQL-Statement>=1.400 \
		devel/p5-MLDBM

TEST_DEPENDS =	devel/p5-Test-Pod>=1.00

.include <bsd.port.mk>
