# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	Object Relational Mapper written in Ruby

DISTNAME =	dm-core-${VERSION}
REVISION =      1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-data_objects-*:databases/ruby-data_objects,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-extlib->=0.9.13:devel/ruby-extlib,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-addressable->=2.1:www/ruby-addressable,${FLAVOR}

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-do_sqlite3-*:databases/ruby-do_sqlite3,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-fastercsv-*:textproc/ruby-fastercsv,${FLAVOR}

.include <bsd.port.mk>
