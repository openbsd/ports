# $OpenBSD: Makefile,v 1.4 2015/05/15 07:34:15 benoit Exp $

COMMENT =	PerlIO layer that adds read & write timeout to a handle

DISTNAME =	PerlIO-via-Timeout-0.30
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Time-Out
TEST_DEPENDS =		net/p5-Test-TCP

.include <bsd.port.mk>
