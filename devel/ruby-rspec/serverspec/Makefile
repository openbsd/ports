# $OpenBSD: Makefile,v 1.2 2014/04/20 09:43:17 jasper Exp $

COMMENT=	RSpec tests for testing machine configuration/state
DISTNAME=	serverspec-1.3.0
REVISION=	0

HOMEPAGE=	http://serverspec.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-highline,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/rspec,${MODRUBY_FLAVOR} \
		devel/ruby-rspec/specinfra,${MODRUBY_FLAVOR}>=1.2.1p1 \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
