# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	Object Relational Mapper written in Ruby

DISTNAME =	dm-core-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-data_objects,${MODRUBY_FLAVOR} \
		devel/ruby-extlib,${MODRUBY_FLAVOR}>=0.9.13 \
		www/ruby-addressable,${MODRUBY_FLAVOR}>=2.1

REGRESS_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			textproc/ruby-fastercsv,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
