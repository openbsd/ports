# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:34 sthen Exp $

COMMENT =	perl module for IPv4/IPv6 address parsing

MODULES =	cpan

DISTNAME =	Net-IP-XS-0.21
REVISION =	0

CATEGORIES =	net

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

RUN_DEPENDS =	devel/p5-IO-Capture \
		devel/p5-Tie-Simple

# missing optional depend for tests: IP::Authority

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
