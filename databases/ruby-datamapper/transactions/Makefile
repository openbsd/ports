# $OpenBSD: Makefile,v 1.6 2013/10/26 23:55:34 jeremy Exp $

COMMENT =	transaction support for DataMapper

DISTNAME =	dm-transactions-${VERSION}
REVISION =	3

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC}

TEST_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
