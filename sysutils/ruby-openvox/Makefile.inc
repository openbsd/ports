PORTROACH ?=		limit:^${VERSION:R:R}

COMMENT =		community implementation of Puppet
DISTNAME =		openvox-${VERSION}
CATEGORIES =		sysutils

HOMEPAGE =		https://voxpupuli.org/openvox

MAINTAINER ?=		Klemens Nanni <kn@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby \
			lang/python
MODRUBY_HANDLE_FLAVORS =No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

SUBST_VARS +=		MODPY_DEFAULT_VERSION_2 \
			MODPY_DEFAULT_VERSION_3 \
			MODRUBY_BINREV \
			RUBY

CONFIGURE_STYLE =	ruby gem
GEM_FLAGS =		--no-format-executable

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		archivers/gtar \
			sysutils/ruby-augeas,${MODRUBY_FLAVOR} \
			sysutils/ruby-shadow,${MODRUBY_FLAVOR}>=2.3.4p1

NO_TEST =		Yes

PKG_ARCH =		*
