COMMENT =	tools to access the Puppet Forge API

DISTNAME =	puppet_forge-6.2.0
CATEGORIES =	devel
HOMEPAGE =	https://github.com/puppetlabs/forge-ruby
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/ruby-minitar,${MODRUBY_FLAVOR}>=1.0.2,<2 \
		devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=1,<2 \
		www/ruby-faraday,${MODRUBY_FLAVOR}>=2,<3 \
		www/ruby-faraday-follow_redirects,${MODRUBY_FLAVOR}>=0.3.0,<0.6

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
