# $OpenBSD: Makefile,v 1.4 2015/07/16 15:12:34 afresh1 Exp $

COMMENT =	PSGI adapter for CGI

MODULES =	cpan
DISTNAME =	CGI-Emulate-PSGI-0.20
CATEGORIES =	www

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-HTTP-Message>=0
TEST_DEPENDS =	devel/p5-Test-Requires>=0.08

.include <bsd.port.mk>
