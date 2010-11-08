# $OpenBSD: Makefile,v 1.6 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	DataMapper ORM plugin

DISTNAME =	merb_datamapper-${VERSION}
REVISION =      2

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-dm-core->=0.10.0:databases/ruby-datamapper/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-dm-migrations->=0.10.0:databases/ruby-datamapper/migrations,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-core->=${VERSION}:www/ruby-merb/core,${FLAVOR}

.include <bsd.port.mk>
