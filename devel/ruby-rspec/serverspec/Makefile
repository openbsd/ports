# $OpenBSD: Makefile,v 1.4 2014/06/12 10:08:47 jasper Exp $

COMMENT=	RSpec tests for testing machine configuration/state
DISTNAME=	serverspec-1.6.0

HOMEPAGE=	http://serverspec.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-highline,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/rspec,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/specinfra,${MODRUBY_FLAVOR}>=1.11.0 \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
