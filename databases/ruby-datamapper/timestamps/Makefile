# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	magically add timestamps to DataMapper models

DISTNAME =	dm-timestamps-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}>=${VERSION}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
