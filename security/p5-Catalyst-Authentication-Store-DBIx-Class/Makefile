COMMENT =	storage class for Catalyst Authentication using DBIx::Class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Authentication-Store-DBIx-Class-0.1506
CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	databases/p5-DBIx-Class \
		databases/p5-Catalyst-Model-DBIC-Schema \
		devel/p5-Moose \
		devel/p5-namespace-autoclean \
		devel/p5-Try-Tiny \
		security/p5-Catalyst-Plugin-Authentication>=0.10008 \
		www/p5-Catalyst-Runtime
TEST_DEPENDS =	databases/p5-DBD-SQLite \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		security/p5-Catalyst-Plugin-Authorization-Roles \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV =	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
