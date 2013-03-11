# $OpenBSD: Makefile,v 1.12 2013/03/11 02:52:08 espie Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		converters/ruby-json,${MODRUBY_FLAVOR}>=1.4,<2.0 \
		textproc/ruby-fastercsv,${MODRUBY_FLAVOR}>=1.5.3,<1.6

TEST_DEPENDS =	converters/ruby-json,${MODRUBY_FLAVOR} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			databases/ruby-datamapper/validations,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
