COMMENT =	cookie storage for Mozilla browsers

DISTNAME =	HTTP-Cookies-Mozilla-3.002
PKGNAME =	p5-$(DISTNAME)

CATEGORIES =	www

GH_PROJECT = http-cookies-mozilla
GH_TAGNAME = release-3.002
GH_ACCOUNT = briandfoy

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-HTTP-Cookies \
		databases/sqlite3

TEST_DEPENDS +=	databases/p5-DBD-SQLite \
		textproc/p5-Text-Diff \
		www/p5-URI

CONFIGURE_STYLE =	perl
PKG_ARCH =	*

.include <bsd.port.mk>
