# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	write and specify DataMapper migrations

DISTNAME =	dm-migrations-${VERSION}
REVISION =      1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-dm-core->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR}

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-do_sqlite3-*:databases/ruby-do_sqlite3,${FLAVOR}

.include <bsd.port.mk>
