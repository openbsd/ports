# $OpenBSD: Makefile,v 1.2 2020/07/03 21:44:36 sthen Exp $

COMMENT =	just some syntax sugar for DBIx::Class

DISTNAME =	DBICx-Sugar-0.0200
REVISION =	0

CPAN_AUTHOR =	IRONCAMEL

CATEGORIES =	databases

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		databases/p5-DBIx-Class \
			databases/p5-SQL-Translator>=0.11018 \
			devel/p5-YAML
TEST_DEPENDS =		databases/p5-DBD-SQLite \
			databases/p5-DBI \
			databases/p5-DBIx-Class \
			databases/p5-DBIx-Class-Schema-Loader \
			devel/p5-MooseX-Types-LoadableClass \
			devel/p5-Test-Modern \
			devel/p5-Test-Requires

PKG_ARCH =		*

.include <bsd.port.mk>
