# $OpenBSD: Makefile,v 1.3 2009/10/12 22:51:08 pirofti Exp $

COMMENT =	Object Relational Mapper written in Ruby

DISTNAME =	dm-core-${VERSION}

RUN_DEPENDS =	::databases/ruby-data_objects \
		:ruby-extlib->=0.9.13:devel/ruby-extlib \
		:ruby-addressable->=2.1:www/ruby-addressable

REGRESS_DEPENDS =	::devel/ruby-hoe \
			::databases/ruby-do_sqlite3 \
			::textproc/ruby-fastercsv

.include <bsd.port.mk>
