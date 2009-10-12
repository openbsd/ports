# $OpenBSD: Makefile,v 1.3 2009/10/12 23:47:38 pirofti Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core \
		::security/ruby-bcrypt \
		::converters/ruby-json

REGRESS_DEPENDS =	${MODRUBY_RUN_DEPENDS},-iconv \
			::databases/ruby-do_sqlite3 \
			::textproc/ruby-fastercsv \
			::devel/ruby-uuidtools

.include <bsd.port.mk>
