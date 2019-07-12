# $OpenBSD: Makefile,v 1.6 2019/07/12 21:15:35 sthen Exp $

COMMENT =	Perl HTTP connection client

DISTNAME =	Net-HTTP-6.17
CATEGORIES =	net

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-URI

.ifdef LIVE_TEST
TEST_DEPENDS =	security/p5-IO-Socket-SSL>=2.012 \
		net/p5-IO-Socket-INET6
.else
TEST_ENV +=	NO_NETWORK_TESTING=1
.endif

.include <bsd.port.mk>
