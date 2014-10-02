# $OpenBSD: Makefile,v 1.7 2014/10/02 08:00:10 jasper Exp $

COMMENT=		rake tasks and spec_helper for Puppet modules spec tests
DISTNAME=		puppetlabs_spec_helper-0.8.2

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-mocha,${MODRUBY_FLAVOR}>=0.10.5 \
			devel/ruby-rspec/2/rspec,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/puppet,${MODRUBY_FLAVOR} \
			sysutils/ruby-puppet/3 \
			sysutils/ruby-puppet-lint,${MODRUBY_FLAVOR} \
			sysutils/ruby-puppet-syntax,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
