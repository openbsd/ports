# $OpenBSD: Makefile,v 1.6 2010/01/02 00:28:56 msf Exp $

COMMENT =	the full Merb stack

DISTNAME =	merb-more-${VERSION}

RUN_DEPENDS =	:ruby-merb-core->=${VERSION}:www/ruby-merb/core \
		:ruby-merb-action-args->=${VERSION}:www/ruby-merb/action-args \
		:ruby-merb-assets->=${VERSION}:www/ruby-merb/assets \
		:ruby-merb-slices->=${VERSION}:www/ruby-merb/slices \
		:ruby-merb-auth->=${VERSION}:www/ruby-merb/auth \
		:ruby-merb-cache->=${VERSION}:www/ruby-merb/cache \
		:ruby-merb-exceptions->=${VERSION}:www/ruby-merb/exceptions \
		:ruby-merb-gen->=${VERSION}:www/ruby-merb/gen \
		:ruby-merb-haml->=${VERSION}:www/ruby-merb/haml \
		:ruby-merb-helpers->=${VERSION}:www/ruby-merb/helpers \
		:ruby-merb-mailer->=${VERSION}:www/ruby-merb/mailer \
		:ruby-merb-param-protection->=${VERSION}:www/ruby-merb/param-protection

.include <bsd.port.mk>
