# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:56 sthen Exp $

COMMENT =	create a temporary database from a DBIx::Class::Schema

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBICx-TestDatabase-0.05
CATEGORIES =	databases
CPAN_AUTHOR =	JROCKWAY

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-SQL-Translator

TEST_DEPENDS =	databases/p5-DBIx-Class

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
