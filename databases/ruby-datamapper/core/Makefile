# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 02:40:56 bernd Exp $

COMMENT =	Object Relational Mapper written in Ruby

DISTNAME =	dm-core-${VERSION}

RUN_DEPENDS =	::databases/ruby-data_objects

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-hoe \
			::databases/ruby-do_sqlite3 \
			::textproc/ruby-fastercsv

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
