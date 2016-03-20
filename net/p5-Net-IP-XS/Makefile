# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:53 naddy Exp $

COMMENT =	perl module for IPv4/IPv6 address parsing

MODULES =	cpan
DISTNAME =	Net-IP-XS-0.13
CATEGORIES =	net

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	perl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-IO-Capture \
			net/p5-IP-Country \
			devel/p5-Tie-Simple
TEST_DEPENDS =		devel/p5-Test-Pod

.include <bsd.port.mk>
