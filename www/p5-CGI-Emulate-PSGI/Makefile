# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:14 naddy Exp $

COMMENT =	PSGI adapter for CGI

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	CGI-Emulate-PSGI-0.20
CATEGORIES =	www

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-HTTP-Message>=0
TEST_DEPENDS =	devel/p5-Test-Requires>=0.08

.include <bsd.port.mk>
