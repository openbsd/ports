# $OpenBSD: Makefile,v 1.8 2013/03/11 02:52:06 espie Exp $

COMMENT =	perl binding for Redis database

DISTNAME =	Redis-1.961
CATEGORIES =	databases

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Exception \
			devel/p5-Try-Tiny \
			devel/p5-IO-String \
			databases/redis

.include <bsd.port.mk>
