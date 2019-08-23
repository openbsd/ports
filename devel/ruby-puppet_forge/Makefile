# $OpenBSD: Makefile,v 1.10 2019/08/23 09:13:05 sebastia Exp $

COMMENT =	tools to access the Puppet Forge API

DISTNAME =	puppet_forge-2.3.0
CATEGORIES =	devel
HOMEPAGE =	https://github.com/puppetlabs/forge-ruby
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/ruby-minitar,${MODRUBY_FLAVOR} \
		devel/ruby-gettext-setup,${MODRUBY_FLAVOR}>=0.11,<1 \
		devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=1.0,<2.0 \
		www/ruby-faraday,${MODRUBY_FLAVOR}>=0.9.0,<0.14 \
		www/ruby-faraday_middleware,${MODRUBY_FLAVOR}>=0.9.0,<0.13

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
