# $OpenBSD: Makefile,v 1.11 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	fast, lightweight MVC framework for Ruby

DISTNAME =	merb-${VERSION}
REVISION =	2

RUN_DEPENDS =	www/ruby-merb/more,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/datamapper,${MODRUBY_FLAVOR}>=${VERSION} \
		databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
		databases/ruby-datamapper/aggregates,${MODRUBY_FLAVOR} \
		databases/ruby-datamapper/serializer,${MODRUBY_FLAVOR} \
		databases/ruby-datamapper/sweatshop,${MODRUBY_FLAVOR} \
		databases/ruby-datamapper/timestamps,${MODRUBY_FLAVOR} \
		databases/ruby-datamapper/types,${MODRUBY_FLAVOR} \
		databases/ruby-datamapper/validations,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
