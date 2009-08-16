# $OpenBSD: Makefile,v 1.2 2009/08/16 12:59:27 msf Exp $

COMMENT =	Object Relational Mapper written in Ruby

DISTNAME =	dm-core-${VERSION}

RUN_DEPENDS =	::databases/ruby-data_objects \
		:ruby-extlib->=0.9.11:devel/ruby-extlib

REGRESS_DEPENDS =	::devel/ruby-hoe \
			::databases/ruby-do_sqlite3 \
			::textproc/ruby-fastercsv

.include <bsd.port.mk>
