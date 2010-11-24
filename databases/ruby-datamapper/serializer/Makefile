# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}>=${VERSION}

REGRESS_DEPENDS =	converters/ruby-json,${MODRUBY_FLAVOR} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			databases/ruby-datamapper/validations,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
