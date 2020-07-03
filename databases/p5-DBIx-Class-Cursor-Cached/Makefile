# $OpenBSD: Makefile,v 1.6 2020/07/03 21:44:36 sthen Exp $

COMMENT =	cursor class with built-in caching support

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBIx-Class-Cursor-Cached-1.001004
CATEGORIES =	databases
REVISION =	0

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Carp-Clan \
		databases/p5-DBIx-Class

TEST_DEPENDS =	devel/p5-Cache-Cache \
		databases/p5-DBD-SQLite

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
