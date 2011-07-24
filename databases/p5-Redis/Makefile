# $OpenBSD: Makefile,v 1.2 2011/07/24 15:48:10 benoit Exp $

COMMENT =	perl binding for Redis database

DISTNAME =	Redis-1.904
CATEGORIES =	databases

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

REGRESS_DEPENDS =	devel/p5-Test-Deep \
			devel/p5-Test-Exception \
			devel/p5-IO-String \
			databases/redis

.include <bsd.port.mk>
