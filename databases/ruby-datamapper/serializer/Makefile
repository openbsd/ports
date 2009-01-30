# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 02:40:58 bernd Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}

RUN_DEPENDS =	::databases/ruby-datamapper/core

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::converters/ruby-json \
			::databases/ruby-do_sqlite3

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
