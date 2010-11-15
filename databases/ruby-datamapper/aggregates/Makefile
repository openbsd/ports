# $OpenBSD: Makefile,v 1.5 2010/11/15 00:22:53 espie Exp $

COMMENT =	aggregates support for DataMapper

DISTNAME =	dm-aggregates-${VERSION}
REVISION =      1

RUN_DEPENDS =	STEM->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${FLAVOR}

.include <bsd.port.mk>
