COMMENT =	PSGI adapter for CGI

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	CGI-Emulate-PSGI-0.23
CATEGORIES =	www

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-CGI>=3.63 \
		www/p5-HTTP-Message
TEST_DEPENDS =	devel/p5-Test-Requires>=0.08

# Additional dependencies to avoid skipping test
TEST_DEPENDS +=	www/p5-Plack

.include <bsd.port.mk>
