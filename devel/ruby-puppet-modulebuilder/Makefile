COMMENT=	build Puppet modules from source

DISTNAME=	puppet-modulebuilder-1.1.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/puppetlabs/puppet-modulebuilder
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# APACHE-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS += ${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/ruby-minitar,${MODRUBY_FLAVOR}>=0.9,<1 \
		devel/ruby-pathspec,${MODRUBY_FLAVOR}>=1.1,<3

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
