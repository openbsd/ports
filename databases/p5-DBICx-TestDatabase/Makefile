# $OpenBSD: Makefile,v 1.2 2013/03/11 02:52:06 espie Exp $

COMMENT =	create a temporary database from a DBIx::Class::Schema

MODULES =	cpan
DISTNAME =	DBICx-TestDatabase-0.04
CATEGORIES =	databases
CPAN_AUTHOR =	JROCKWAY

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-SQL-Translator

TEST_DEPENDS =	databases/p5-DBIx-Class

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
