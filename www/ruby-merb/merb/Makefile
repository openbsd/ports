# $OpenBSD: Makefile,v 1.5 2009/10/20 05:21:14 bernd Exp $

COMMENT =	fast, lightweight MVC framework for Ruby

DISTNAME =	merb-${VERSION}

# The datamapper dependency in merb seems broken.
GEM_SKIPDEPENDS = 	dm-core do_sqlite3 dm-timestamps dm-types \
			dm-aggregates dm-migrations dm-validations \
			dm-sweatshop dm-serializer

RUN_DEPENDS =	::www/ruby-merb/more \
		::www/ruby-merb/datamapper \
		::databases/ruby-do_sqlite3 \
		::databases/ruby-datamapper/aggregates \
		::databases/ruby-datamapper/serializer \
		::databases/ruby-datamapper/sweatshop \
		::databases/ruby-datamapper/timestamps \
		::databases/ruby-datamapper/types \
		::databases/ruby-datamapper/validations

.include <bsd.port.mk>
