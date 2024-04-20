PKG_ARCH ?=	*
COMMENT ?=	centralised configuration management for networks
DISTNAME ?=	puppet-${VERSION}
HOMEPAGE ?=	https://puppet.com/
MAINTAINER ?=	Sebastian Reitenbach <sebastia@openbsd.org>
NO_TEST ?=	Yes

CATEGORIES +=	sysutils
SUBST_VARS +=	RUBY

# For maintenance/ease of use, the following ports should use the same
# Ruby version as Puppet. Please consult this matrix before adjusting:
# https://docs.puppet.com/guides/platforms.html#ruby-versions
#
# Common:
#   devel/ruby-rgen
#   databases/ruby-hiera-eyaml
#   databases/ruby-hiera-file
#   net/ruby-msgpack
#   sysutils/facter
#   sysutils/mcollective
#   sysutils/ruby-augeas
#   sysutils/ruby-shadow
# Puppet 6:
#   devel/ruby-concurrent-ruby
#   devel/ruby-semantic_puppet

MODULES +=		lang/ruby \
			lang/python
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable
CONFIGURE_STYLE =		ruby gem

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/gtar \
		sysutils/ruby-augeas,${MODRUBY_FLAVOR} \
		sysutils/ruby-shadow,${MODRUBY_FLAVOR}>=2.3.4p1

# Apache2
PERMIT_PACKAGE=	Yes

SUBST_VARS +=		MODRUBY_BINREV MODPY_DEFAULT_VERSION_2 MODPY_DEFAULT_VERSION_3
