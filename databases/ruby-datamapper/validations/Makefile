# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 02:40:58 bernd Exp $

COMMENT =	provides validations for DataMapper model classes

DISTNAME =	dm-validations-${VERSION}

RUN_DEPENDS =	::databases/ruby-datamapper/core

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::databases/ruby-do_sqlite3

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
