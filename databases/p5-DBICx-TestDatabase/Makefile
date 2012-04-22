# $OpenBSD: Makefile,v 1.1.1.1 2012/04/22 20:34:16 sthen Exp $

COMMENT =	create a temporary database from a DBIx::Class::Schema

MODULES =	cpan
DISTNAME =	DBICx-TestDatabase-0.04
CATEGORIES =	databases
CPAN_AUTHOR =	JROCKWAY

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-SQL-Translator

REGRESS_DEPENDS =	databases/p5-DBIx-Class

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
