# $OpenBSD: Makefile,v 1.2 2013/03/11 02:52:06 espie Exp $

COMMENT =	cursor class with built-in caching support

MODULES =	cpan
DISTNAME =	DBIx-Class-Cursor-Cached-1.001002
CATEGORIES =	databases

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Carp-Clan \
		databases/p5-DBIx-Class

TEST_DEPENDS =	devel/p5-Cache-Cache \
			databases/p5-DBD-SQLite

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
