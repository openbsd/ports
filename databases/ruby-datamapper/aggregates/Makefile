# $OpenBSD: Makefile,v 1.2 2009/08/16 12:59:27 msf Exp $

COMMENT =	aggregates support for DataMapper

DISTNAME =	dm-aggregates-${VERSION}

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core

REGRESS_DEPENDS =	::databases/ruby-do_sqlite3 

.include <bsd.port.mk>
