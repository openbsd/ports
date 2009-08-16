# $OpenBSD: Makefile,v 1.2 2009/08/16 12:59:27 msf Exp $

COMMENT =	magically add timestamps to DataMapper models

DISTNAME =	dm-timestamps-${VERSION}

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core

REGRESS_DEPENDS =	::databases/ruby-do_sqlite3

.include <bsd.port.mk>
