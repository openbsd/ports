# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:54 espie Exp $

COMMENT =	Object Relational Mapper written in Ruby

DISTNAME =	dm-core-${VERSION}
REVISION =      1

RUN_DEPENDS =	databases/ruby-data_objects,${FLAVOR} \
		STEM->=0.9.13:devel/ruby-extlib,${FLAVOR} \
		STEM->=2.1:www/ruby-addressable,${FLAVOR}

REGRESS_DEPENDS =	devel/ruby-hoe,${FLAVOR} \
			databases/ruby-do_sqlite3,${FLAVOR} \
			textproc/ruby-fastercsv,${FLAVOR}

.include <bsd.port.mk>
