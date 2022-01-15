# $OpenBSD: Makefile,v 1.23 2022/01/15 07:20:26 benoit Exp $

COMMENT =	perl binding for Redis database

DISTNAME =	Redis-1.999
CATEGORIES =	databases

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modbuild tiny

RUN_DEPENDS =		devel/p5-Try-Tiny \
			net/p5-IO-Socket-Timeout \
			security/p5-IO-Socket-SSL

BUILD_DEPENDS =		devel/p5-Test-CPAN-Meta

TEST_DEPENDS +=		devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-SharedFork \
			net/p5-Test-TCP \
			devel/p5-IO-String \
			databases/redis

.include <bsd.port.mk>
