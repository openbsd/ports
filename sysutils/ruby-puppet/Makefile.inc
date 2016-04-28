# $OpenBSD: Makefile.inc,v 1.33 2016/04/28 09:27:10 jasper Exp $

PKG_ARCH ?=	*
COMMENT ?=	centralised configuration management for networks
DISTNAME ?=	puppet-${VERSION}
HOMEPAGE ?=	https://puppet.com/
MASTER_SITES ?=	https://downloads.puppetlabs.com/puppet/
MAINTAINER ?=	Jasper Lievisse Adriaanse <jasper@openbsd.org>
NO_TEST ?=	Yes
NO_BUILD ?=	Yes
FILESDIR ?=	${.CURDIR}/../files
PKGDIR ?=	${.CURDIR}/../pkg
PLIST ?=	${.CURDIR}/pkg/PLIST

CATEGORIES +=	sysutils
SUBST_VARS +=	RUBY

# For maintenance/ease of use, the following ports should use the same
# Ruby version as Puppet. Please consult this matrix before adjusting:
# http://docs.puppetlabs.com/guides/platforms.html
#  devel/ruby-rgen
#  databases/puppetdb
#  databases/ruby-hiera
#  databases/ruby-hiera-file
#  net/ruby-msgpack
#  sysutils/mcollective
#  sysutils/ruby-augeas
#  sysutils/ruby-facter
#  sysutils/ruby-shadow
#  www/puppet-dashboard
MODULES +=	lang/ruby

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS +=	databases/ruby-hiera,${MODRUBY_FLAVOR} \
		sysutils/ruby-augeas,${MODRUBY_FLAVOR} \
		sysutils/ruby-facter>=2.0.1p0 \
		sysutils/ruby-shadow,${MODRUBY_FLAVOR}>=2.3.4p1

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

post-install:
	find ${PREFIX} -type f \( -name '*.beforesubst' -or -name '*.orig' \) -exec rm {} \;
