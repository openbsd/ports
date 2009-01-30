# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 02:40:59 bernd Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}

RUN_DEPENDS =	::databases/ruby-datamapper/core \
		::security/ruby-bcrypt \
		::converters/ruby-json

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::lang/ruby,-iconv \
			::databases/ruby-do_sqlite3 \
			::textproc/ruby-fastercsv

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
