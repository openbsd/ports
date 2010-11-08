# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	plugin for the Merb that provides activerecord access

VERSION =	1.0.0.1
DISTNAME =	merb_activerecord-${VERSION}
REVISION =	3

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-merb-core->=${VERSION}:www/ruby-merb/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-activerecord-*:databases/ruby-activerecord,${FLAVOR}

.include <bsd.port.mk>
