# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	provide support for ActionArgs

DISTNAME =	merb-action-args-${VERSION}
REVISION =	1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-merb-core->=${VERSION}:www/ruby-merb/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-ruby2ruby-*:devel/ruby-ruby2ruby,${FLAVOR}

.include <bsd.port.mk>
