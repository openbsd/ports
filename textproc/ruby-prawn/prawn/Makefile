# $OpenBSD: Makefile,v 1.3 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby -- ruby-prawn

DISTNAME =	prawn-${VERSION}
REVISION =	1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-prawn-core-*:textproc/ruby-prawn/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-prawn-layout-*:textproc/ruby-prawn/layout,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-prawn-format-*:textproc/ruby-prawn/format,${FLAVOR}

.include <bsd.port.mk>
