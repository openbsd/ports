# $OpenBSD: Makefile,v 1.1.1.1 2014/12/22 14:41:39 benoit Exp $

COMMENT =	PerlIO layer that adds read & write timeout to a handle

DISTNAME =	PerlIO-via-Timeout-0.29
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Time-Out
TEST_DEPENDS =		net/p5-Test-TCP

.include <bsd.port.mk>
