COMMENT =	system inventory tool

DISTNAME =	facter-4.8.0
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/puppetlabs/facter
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}

RUN_DEPENDS += devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.15.5,<1.17 \
		devel/ruby-hocon,${MODRUBY_FLAVOR}>=1.3,<2 \
		devel/ruby-thor,${MODRUBY_FLAVOR}>=1.0.1,<1.3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
