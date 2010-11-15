# $OpenBSD: Makefile,v 1.5 2010/11/15 00:22:54 espie Exp $

COMMENT =	magically add timestamps to DataMapper models

DISTNAME =	dm-timestamps-${VERSION}
REVISION =	1

RUN_DEPENDS =	STEM->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${FLAVOR}

.include <bsd.port.mk>
