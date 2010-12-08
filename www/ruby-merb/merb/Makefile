# $OpenBSD: Makefile,v 1.12 2010/12/08 22:13:25 jeremy Exp $

COMMENT =	fast, lightweight MVC framework for Ruby

DISTNAME =	merb-${VERSION}

RUN_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}>=0.10.0 \
		databases/ruby-datamapper/data_mapper,${MODRUBY_FLAVOR}>=0.10.0 \
		www/ruby-merb/datamapper,${MODRUBY_FLAVOR}>=1.1,<2.0 \
		www/ruby-merb/slices,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/param-protection,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/mailer,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/helpers,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/haml,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/gen,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/exceptions,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/cache,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/auth,${MODRUBY_FLAVOR}>=1.1,<2.0 \
		www/ruby-merb/assets,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-merb/action-args,${MODRUBY_FLAVOR}=${VERSION} \
		${MODRUBY_RSPEC_DEPENDS}

.include <bsd.port.mk>
