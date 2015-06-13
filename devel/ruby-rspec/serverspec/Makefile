# $OpenBSD: Makefile,v 1.19 2015/06/13 13:18:59 jasper Exp $

COMMENT=	RSpec tests for testing machine configuration/state

DISTNAME=	serverspec-2.18.0

HOMEPAGE=	http://serverspec.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/ruby-multi_json,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/3/rspec,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/3/its,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/specinfra,${MODRUBY_FLAVOR}>=2.35.0

MODRUBY_TEST=	rspec3
TEST_DEPENDS=	devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
