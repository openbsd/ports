# $OpenBSD: Makefile,v 1.1.1.1 2013/04/26 13:28:00 jasper Exp $

COMMENT=		rake tasks and spec_helper for Puppet modules spec tests
DISTNAME=		puppetlabs_spec_helper-0.4.1

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-mocha,${MODRUBY_FLAVOR}>=0.10.5 \
			devel/ruby-rspec/puppet,${MODRUBY_FLAVOR} \
			ruby-puppet-*:sysutils/ruby-puppet/3

.include <bsd.port.mk>
