# $OpenBSD: Makefile,v 1.3 2009/10/12 23:10:22 pirofti Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core

REGRESS_DEPENDS =	::converters/ruby-json \
			::databases/ruby-do_sqlite3 \
			::databases/ruby-datamapper/validations

.include <bsd.port.mk>
