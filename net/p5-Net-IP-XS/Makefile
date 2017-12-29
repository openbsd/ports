# $OpenBSD: Makefile,v 1.4 2017/12/29 07:24:49 florian Exp $

COMMENT =	perl module for IPv4/IPv6 address parsing

MODULES =	cpan
DISTNAME =	Net-IP-XS-0.13
CATEGORIES =	net
REVISION =	1

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-IO-Capture \
			net/p5-IP-Country \
			devel/p5-Tie-Simple
TEST_DEPENDS =		devel/p5-Test-Pod

.include <bsd.port.mk>
