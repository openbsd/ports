# $OpenBSD: Makefile,v 1.21 2014/05/10 01:57:49 afresh1 Exp $

SHARED_ONLY =	Yes

COMMENT =	recursively copy Perl datatypes

MODULES =	cpan
DISTNAME =	Clone-0.36
CATEGORIES =	devel
MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

TEST_DEPENDS =	devel/p5-Taint-Runtime

.include <bsd.port.mk>
