COMMENT =	portable OAuth 1.0 authentication
DISTNAME =	WWW-OAuth-1.002
CATEGORIES =	www
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes
MODULES =		cpan

RUN_DEPENDS =	devel/p5-Class-Tiny-Chained \
		devel/p5-Module-Runtime \
		devel/p5-Role-Tiny>=2.0 \
		security/p5-Crypt-URandom>=0.37 \
		www/p5-URI>=3.26 \
		www/p5-WWW-Form-UrlEncoded>=0.23
TEST_DEPENDS =	devel/p5-Test-Needs

# Additional depends to avoid skipping tests
TEST_DEPENDS +=	www/p5-HTTP-Message \
		www/p5-Mojo

.include <bsd.port.mk>
