# $OpenBSD: Makefile,v 1.7 2010/09/23 22:30:30 jeremy Exp $

COMMENT =	the full Merb stack

DISTNAME =	merb-more-${VERSION}
REVISION =	0

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
