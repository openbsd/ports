# $OpenBSD: Makefile,v 1.8 2010/12/08 22:26:19 jeremy Exp $

COMMENT =	Object Relational Mapper written in Ruby

DISTNAME =	dm-core-${VERSION}

RUN_DEPENDS =	devel/ruby-extlib,${MODRUBY_FLAVOR}>=0.9.15,<0.10 \
		www/ruby-addressable,${MODRUBY_FLAVOR}>=2.2,<3.0

REGRESS_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			textproc/ruby-fastercsv,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
