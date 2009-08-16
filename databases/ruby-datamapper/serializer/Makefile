# $OpenBSD: Makefile,v 1.2 2009/08/16 12:59:27 msf Exp $

COMMENT =	allows DataMapper models and collections to be serialized

DISTNAME =	dm-serializer-${VERSION}

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core

REGRESS_DEPENDS =	::converters/ruby-json \
			::databases/ruby-do_sqlite3

.include <bsd.port.mk>
