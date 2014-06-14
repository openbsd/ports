# $OpenBSD: Makefile,v 1.22 2014/06/14 23:24:55 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	recursively copy Perl datatypes

MODULES =	cpan
DISTNAME =	Clone-0.36
CATEGORIES =	devel
MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

TEST_DEPENDS =	devel/p5-Taint-Runtime

.include <bsd.port.mk>
