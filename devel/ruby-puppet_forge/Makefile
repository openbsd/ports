# $OpenBSD: Makefile,v 1.4 2016/09/09 10:43:21 sebastia Exp $

COMMENT =	tools to access the Puppet Forge API

DISTNAME =	puppet_forge-2.2.2
CATEGORIES =	devel
HOMEPAGE =	https://github.com/puppetlabs/forge-ruby
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/ruby-minitar,${MODRUBY_FLAVOR}>=0,<2 \
		devel/ruby-gettext-setup,${MODRUBY_FLAVOR}>=0.3 \
		devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=0.1.0,<0.2 \
		www/ruby-faraday,${MODRUBY_FLAVOR}>=0.9.0,<0.10 \
		www/ruby-faraday_middleware,${MODRUBY_FLAVOR}>=0.9.0,<0.11

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
