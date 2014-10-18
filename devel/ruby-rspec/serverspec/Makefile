# $OpenBSD: Makefile,v 1.9 2014/10/18 09:37:27 jasper Exp $

COMMENT=	RSpec tests for testing machine configuration/state

DISTNAME=	serverspec-2.3.1
REVISION=	0

HOMEPAGE=	http://serverspec.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/ruby-multi_json,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/3/rspec,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/3/its,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/specinfra,${MODRUBY_FLAVOR}>=2.0.0

MODRUBY_TEST=	rspec3
TEST_DEPENDS=	devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
