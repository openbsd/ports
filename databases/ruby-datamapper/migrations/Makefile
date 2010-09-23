# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:25 jeremy Exp $

COMMENT =	write and specify DataMapper migrations

DISTNAME =	dm-migrations-${VERSION}
REVISION =      0

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core

REGRESS_DEPENDS =	::databases/ruby-do_sqlite3

.include <bsd.port.mk>
