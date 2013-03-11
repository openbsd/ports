# $OpenBSD: Makefile,v 1.5 2013/03/11 02:52:08 espie Exp $

COMMENT =	ruby Object Relational Mapper

DISTNAME =	data_mapper-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/aggregates,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/constraints,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/migrations,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/serializer,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/timestamps,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/transactions,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/types,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-datamapper/validations,${MODRUBY_FLAVOR}=${VERSION} \

TEST_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
