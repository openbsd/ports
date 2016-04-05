# $OpenBSD: Makefile,v 1.6 2016/04/05 12:21:41 sthen Exp $

COMMENT =	PSGI adapter for CGI

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	CGI-Emulate-PSGI-0.20
REVISION =	0
CATEGORIES =	www

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-HTTP-Message>=0 \
		www/p5-CGI
TEST_DEPENDS =	devel/p5-Test-Requires>=0.08

.include <bsd.port.mk>
