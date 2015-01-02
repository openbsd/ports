# $OpenBSD: Makefile,v 1.1.1.1 2015/01/02 14:29:01 florian Exp $

SHARED_ONLY =	YES

COMMENT =	perl module for IPv4/IPv6 address parsing

MODULES =	cpan
DISTNAME =	Net-IP-XS-0.13
CATEGORIES =	net

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# GPL
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-IO-Capture \
			net/p5-IP-Country \
			devel/p5-Tie-Simple
TEST_DEPENDS =		devel/p5-Test-Pod

.include <bsd.port.mk>
