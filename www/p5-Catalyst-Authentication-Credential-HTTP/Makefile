COMMENT =	HTTP Basic and Digest authentication for Catalyst

DISTNAME =	Catalyst-Authentication-Credential-HTTP-1.018

CATEGORIES =	www

FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Accessor \
			devel/p5-Data-UUID>=0.11 \
			security/p5-Catalyst-Plugin-Authentication>=0.10005 \
			textproc/p5-String-Escape \
			www/p5-Catalyst-Runtime \
			www/p5-URI
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-MockObject \
			devel/p5-Test-Needs \
			devel/p5-Test-WWW-Mechanize-Catalyst>=0.51

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
