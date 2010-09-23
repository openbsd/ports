# $OpenBSD: Makefile,v 1.4 2010/09/23 22:30:25 jeremy Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}
REVISION =      0

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core \
		::security/ruby-bcrypt \
		::converters/ruby-json

REGRESS_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
			::devel/ruby-gems \
			::databases/ruby-do_sqlite3 \
			::textproc/ruby-fastercsv \
			::devel/ruby-uuidtools

.include <bsd.port.mk>
