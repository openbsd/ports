# $OpenBSD: Makefile,v 1.7 2020/07/03 21:44:36 sthen Exp $

COMMENT =	create a temporary database from a DBIx::Class::Schema

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBICx-TestDatabase-0.05
CATEGORIES =	databases
CPAN_AUTHOR =	JROCKWAY
REVISION =	0

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-SQL-Translator

TEST_DEPENDS =	databases/p5-DBIx-Class

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
