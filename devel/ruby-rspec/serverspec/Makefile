# $OpenBSD: Makefile,v 1.6 2014/09/17 09:38:46 jasper Exp $

COMMENT=	RSpec tests for testing machine configuration/state
DISTNAME=	serverspec-1.7.0
REVISION=	0

HOMEPAGE=	http://serverspec.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-highline,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/2/rspec,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/specinfra,${MODRUBY_FLAVOR}>=1.14.0 \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
