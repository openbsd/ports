COMMENT =	store your sessions via DBIx::Class

DISTNAME =	Catalyst-Plugin-Session-Store-DBIC-0.14

CATEGORIES =	www

# perl
PERMIT_PACKAGE =	yes

MODULES =		cpan

RUN_DEPENDS =		databases/p5-DBIx-Class>=0.070 \
			devel/p5-Class-Accessor \
			devel/p5-MRO-Compat \
			devel/p5-Test-Warn>=0.20 \
			www/p5-Catalyst-Plugin-Session-Store-Delegate>=0.05 \
			www/p5-Catalyst-Runtime>=5.65

TEST_DEPENDS =		databases/p5-Catalyst-Model-DBIC-Schema \
			databases/p5-DBD-SQLite \
			devel/p5-Test-WWW-Mechanize-Catalyst \
			www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
