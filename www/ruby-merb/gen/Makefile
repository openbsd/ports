# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	application and plugin generators for Merb

DISTNAME =	merb-gen-${VERSION}
REVISION =      1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-merb-core->=${VERSION}:www/ruby-merb/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-templater-*:textproc/ruby-templater,${FLAVOR}

.include <bsd.port.mk>
