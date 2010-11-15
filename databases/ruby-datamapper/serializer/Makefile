# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:54 espie Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}
REVISION =      1

RUN_DEPENDS =	STEM->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR}

REGRESS_DEPENDS =	converters/ruby-json,${FLAVOR} \
			databases/ruby-do_sqlite3,${FLAVOR} \
			databases/ruby-datamapper/validations,${FLAVOR}

.include <bsd.port.mk>
