# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	fast, lightweight MVC framework for Ruby

DISTNAME =	merb-${VERSION}
REVISION =	1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-merb-more->=${VERSION}:www/ruby-merb/more,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb_datamapper->=${VERSION}:www/ruby-merb/datamapper,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-do_sqlite3-*:databases/ruby-do_sqlite3,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-dm-aggregates-*:databases/ruby-datamapper/aggregates,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-dm-serializer-*:databases/ruby-datamapper/serializer,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-dm-sweatshop-*:databases/ruby-datamapper/sweatshop,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-dm-timestamps-*:databases/ruby-datamapper/timestamps,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-dm-types-*:databases/ruby-datamapper/types,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-dm-validations-*:databases/ruby-datamapper/validations,${FLAVOR}

.include <bsd.port.mk>
