# $OpenBSD: Makefile,v 1.5 2013/10/26 23:55:36 jeremy Exp $

COMMENT=		rake tasks and spec_helper for Puppet modules spec tests
DISTNAME=		puppetlabs_spec_helper-0.4.1
REVISION=		2

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-mocha,${MODRUBY_FLAVOR}>=0.10.5 \
			devel/ruby-rspec/puppet,${MODRUBY_FLAVOR} \
			puppet-*:sysutils/ruby-puppet/3

.include <bsd.port.mk>
