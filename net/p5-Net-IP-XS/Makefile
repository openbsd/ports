COMMENT =	perl module for IPv4/IPv6 address parsing

MODULES =	cpan

DISTNAME =	Net-IP-XS-0.22

CATEGORIES =	net

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

RUN_DEPENDS =	devel/p5-IO-Capture \
		devel/p5-Tie-Simple

# missing optional depend for tests: IP::Authority

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
