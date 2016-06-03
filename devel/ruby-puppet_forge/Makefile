# $OpenBSD: Makefile,v 1.3 2016/06/03 13:31:07 sebastia Exp $

COMMENT =	tools to access the Puppet Forge API

DISTNAME =	puppet_forge-2.2.1
CATEGORIES =	devel
HOMEPAGE =	https://github.com/puppetlabs/forge-ruby
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/ruby-minitar,${MODRUBY_FLAVOR}>=0,<2 \
		devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=0.1.0,<0.2 \
		www/ruby-faraday,${MODRUBY_FLAVOR}>=0.9.0,<0.10 \
		www/ruby-faraday_middleware,${MODRUBY_FLAVOR}>=0.9.0,<0.11

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
