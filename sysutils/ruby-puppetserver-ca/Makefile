COMMENT =	interact with Puppet Server's CA

DISTNAME =	puppetserver-ca-2.7.0
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/puppetlabs/puppetserver-ca-cli/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}

RUN_DEPENDS += sysutils/ruby-facter,${MODRUBY_FLAVOR}>=2.0.1,<5

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
