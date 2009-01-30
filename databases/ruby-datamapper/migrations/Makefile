# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 02:40:55 bernd Exp $

COMMENT =	write and specify DataMapper migrations

DISTNAME =	dm-migrations-${VERSION}

RUN_DEPENDS =	::databases/ruby-datamapper/core

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::databases/ruby-do_sqlite3

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
