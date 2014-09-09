# $OpenBSD: Makefile,v 1.6 2014/09/09 07:58:11 jasper Exp $

COMMENT=		rake tasks and spec_helper for Puppet modules spec tests
DISTNAME=		puppetlabs_spec_helper-0.8.1

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-mocha,${MODRUBY_FLAVOR}>=0.10.5 \
			devel/ruby-rspec/puppet,${MODRUBY_FLAVOR} \
			sysutils/ruby-puppet/3 \
			sysutils/ruby-puppet-lint,${MODRUBY_FLAVOR} \
			sysutils/ruby-puppet-syntax,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
