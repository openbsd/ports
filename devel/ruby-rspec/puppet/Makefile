# $OpenBSD: Makefile,v 1.3 2013/10/26 23:55:36 jeremy Exp $

COMMENT=	RSpec tests for Puppet manifests
DISTNAME=	rspec-puppet-0.1.6
REVISION=	1

HOMEPAGE=	http://rspec-puppet.com/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-rspec/rspec,${MODRUBY_FLAVOR}

MODRUBY_TEST=	rake rspec2
TEST_DEPENDS=	databases/ruby-hiera,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/puppetlabs_spec_helper,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
