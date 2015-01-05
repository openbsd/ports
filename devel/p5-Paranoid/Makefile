# $OpenBSD: Makefile,v 1.7 2015/01/05 14:52:02 benoit Exp $

COMMENT =	paranoia support for safer programs

MODULES =	cpan
DISTNAME =	Paranoid-0.36
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		sysutils/p5-Unix-Syslog \
			databases/p5-BerkeleyDB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
