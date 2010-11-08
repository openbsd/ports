# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	the full Merb stack

DISTNAME =	merb-more-${VERSION}
REVISION =	1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-merb-core->=${VERSION}:www/ruby-merb/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-action-args->=${VERSION}:www/ruby-merb/action-args,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-assets->=${VERSION}:www/ruby-merb/assets,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-slices->=${VERSION}:www/ruby-merb/slices,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-auth->=${VERSION}:www/ruby-merb/auth,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-cache->=${VERSION}:www/ruby-merb/cache,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-exceptions->=${VERSION}:www/ruby-merb/exceptions,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-gen->=${VERSION}:www/ruby-merb/gen,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-haml->=${VERSION}:www/ruby-merb/haml,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-helpers->=${VERSION}:www/ruby-merb/helpers,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-mailer->=${VERSION}:www/ruby-merb/mailer,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-param-protection->=${VERSION}:www/ruby-merb/param-protection,${FLAVOR}

.include <bsd.port.mk>
