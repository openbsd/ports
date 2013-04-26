# $OpenBSD: Makefile,v 1.1.1.1 2013/04/26 13:28:43 jasper Exp $

COMMENT=	RSpec tests for Puppet manifests
DISTNAME=	rspec-puppet-0.1.6

HOMEPAGE=	http://rspec-puppet.com/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-rspec/rspec,${MODRUBY_FLAVOR}

MODRUBY_TEST=	rake rspec2
TEST_DEPENDS=	databases/ruby-hiera,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/puppetlabs_spec_helper,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
