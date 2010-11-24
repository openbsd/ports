# $OpenBSD: Makefile,v 1.10 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	the full Merb stack

DISTNAME =	merb-more-${VERSION}
REVISION =	2

RUN_DEPENDS =	www/ruby-merb/core,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/action-args,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/assets,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/slices,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/auth,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/cache,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/exceptions,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/gen,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/haml,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/helpers,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/mailer,${MODRUBY_FLAVOR}>=${VERSION} \
		www/ruby-merb/param-protection,${MODRUBY_FLAVOR}>=${VERSION}

.include <bsd.port.mk>
