# $OpenBSD: Makefile,v 1.4 2010/09/23 22:30:25 jeremy Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}
REVISION =      0

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core

REGRESS_DEPENDS =	::converters/ruby-json \
			::databases/ruby-do_sqlite3 \
			::databases/ruby-datamapper/validations

.include <bsd.port.mk>
