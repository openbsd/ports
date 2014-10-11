# $OpenBSD: Makefile,v 1.7 2014/10/11 19:54:46 jeremy Exp $

COMMENT=	RSpec tests for testing machine configuration/state
DISTNAME=	serverspec-1.7.0
REVISION=	1

HOMEPAGE=	http://serverspec.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-highline,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/2/rspec,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/specinfra,${MODRUBY_FLAVOR}>=1.14.0 \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
