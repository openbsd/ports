# $OpenBSD: Makefile,v 1.68 2020/12/05 21:05:59 afresh1 Exp $

COMMENT =	the standard database interface module for Perl

MODULES =	cpan
DISTNAME =	DBI-1.643
FIX_EXTRACT_PERMISSIONS =	Yes
CATEGORIES =	databases

HOMEPAGE =	http://dbi.perl.org/
MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

RUN_DEPENDS =	net/p5-PlRPC>=0.2017 \
		databases/p5-SQL-Statement>=1.400 \
		devel/p5-MLDBM

TEST_DEPENDS =	devel/p5-Test-Pod>=1.00

.include <bsd.port.mk>
