# $OpenBSD: Makefile,v 1.9 2013/10/25 16:16:57 benoit Exp $

COMMENT =	perl binding for Redis database

DISTNAME =	Redis-1.962
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
