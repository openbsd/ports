# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:53 naddy Exp $

COMMENT =	Perl HTTP connection client

DISTNAME =	Net-HTTP-6.09
CATEGORIES =	net

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-URI
BUILD_DEPENDS =	${RUN_DEPENDS}

.ifdef LIVE_TEST
TEST_DEPENDS =	security/p5-IO-Socket-SSL>=1.38
CONFIGURE_ARGS +=--live-tests
.endif

.include <bsd.port.mk>
