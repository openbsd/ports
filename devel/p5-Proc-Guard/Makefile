# $OpenBSD: Makefile,v 1.1.1.1 2014/12/28 09:20:30 benoit Exp $

COMMENT =	process runner with RAII pattern

DISTNAME =	Proc-Guard-0.06
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Accessor-Lite
TEST_DEPENDS +=		sysutils/p5-File-Which \
			net/p5-Test-TCP

.include <bsd.port.mk>
