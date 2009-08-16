# $OpenBSD: Makefile,v 1.2 2009/08/16 12:59:27 msf Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core \
		::security/ruby-bcrypt \
		::converters/ruby-json

REGRESS_DEPENDS =	${MODRUBY_RUN_DEPENDS},-iconv \
			::databases/ruby-do_sqlite3 \
			::textproc/ruby-fastercsv

.include <bsd.port.mk>
