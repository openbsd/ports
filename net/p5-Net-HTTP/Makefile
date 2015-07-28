# $OpenBSD: Makefile,v 1.3 2015/07/28 09:53:30 nigel Exp $

COMMENT =	Perl HTTP connection client

DISTNAME =	Net-HTTP-6.09
CATEGORIES =	net

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-URI
BUILD_DEPENDS =	${RUN_DEPENDS}

.ifdef LIVE_TEST
TEST_DEPENDS =	security/p5-IO-Socket-SSL>=1.38
CONFIGURE_ARGS +=--live-tests
.endif

.include <bsd.port.mk>
