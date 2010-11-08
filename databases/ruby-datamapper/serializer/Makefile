# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}
REVISION =      1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-dm-core->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR}

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-json-*:converters/ruby-json,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-do_sqlite3-*:databases/ruby-do_sqlite3,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-dm-validations-*:databases/ruby-datamapper/validations,${FLAVOR}

.include <bsd.port.mk>
