# $OpenBSD: Makefile,v 1.2 2013/04/26 14:14:32 jasper Exp $

COMMENT=	RSpec tests for Puppet manifests
DISTNAME=	rspec-puppet-0.1.6
REVISION=	0

HOMEPAGE=	http://rspec-puppet.com/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-rspec/rspec,${MODRUBY_FLAVOR}

MODRUBY_TEST=	rake rspec2
TEST_DEPENDS=	databases/ruby-hiera,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/puppetlabs_spec_helper,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
