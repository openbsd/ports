# $OpenBSD: Makefile.inc,v 1.48 2020/05/18 09:15:50 kn Exp $

PKG_ARCH ?=	*
COMMENT ?=	centralised configuration management for networks
DISTNAME ?=	puppet-${VERSION}
HOMEPAGE ?=	https://puppet.com/
MASTER_SITES ?=	https://downloads.puppetlabs.com/puppet/
MAINTAINER ?=	Sebastian Reitenbach <sebastia@openbsd.org>
NO_TEST ?=	Yes
NO_BUILD ?=	Yes
PKGDIR ?=	${.CURDIR}/../pkg
PLIST ?=	${.CURDIR}/pkg/PLIST

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
# Puppet 4:
#   databases/puppetdb4
#   databases/ruby-hiera3
# Puppet 5:
#   databases/ruby-hiera3
# Puppet 6:
#   devel/ruby-concurrent-ruby
#   devel/ruby-semantic_puppet

MODULES +=	lang/ruby

MODULES +=		lang/python
MODPY_BUILDDEP = 	No
MODPY_RUNDEP =		No

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/gtar \
		sysutils/ruby-augeas,${MODRUBY_FLAVOR} \
		sysutils/ruby-shadow,${MODRUBY_FLAVOR}>=2.3.4p1

# Apache2
PERMIT_PACKAGE=	Yes

FAKE_FLAGS +=		HOME=${WKRDIR}/home

SUBST_VARS +=		MODRUBY_BINREV

post-install:
	find ${PREFIX} -type f \( -name '*.beforesubst' -or -name '*.orig' \) -delete
	gunzip ${PREFIX}/man/*/*.gz
