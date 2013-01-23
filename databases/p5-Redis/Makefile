# $OpenBSD: Makefile,v 1.6 2013/01/23 11:07:46 benoit Exp $

COMMENT =	perl binding for Redis database

DISTNAME =	Redis-1.959
CATEGORIES =	databases

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Try-Tiny

REGRESS_DEPENDS =	devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Exception \
			devel/p5-Try-Tiny \
			devel/p5-IO-String \
			databases/redis

.include <bsd.port.mk>
