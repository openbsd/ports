COMMENT =		simple way to write new native resources for puppet

DISTNAME =		puppet-resource_api-1.8.14
CATEGORIES =		devel
HOMEPAGE =		https://github.com/puppetlabs/puppet-resource_api
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-hocon,${MODRUBY_FLAVOR}>=1,<2

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
