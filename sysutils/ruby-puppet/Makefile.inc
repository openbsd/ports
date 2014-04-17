# $OpenBSD: Makefile.inc,v 1.24 2014/04/17 15:25:39 jasper Exp $

PKG_ARCH ?=	*
COMMENT ?=	centralised configuration management for networks
DISTNAME ?=	puppet-${VERSION}
HOMEPAGE ?=	https://puppetlabs.com
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
#  databases/ruby-hiera
#  databases/ruby-hiera-file
#  net/ruby-msgpack
#  sysutils/mcollective
#  sysutils/ruby-augeas
#  sysutils/ruby-facter
#  sysutils/ruby-shadow
#  www/puppet-dashboard
MODULES +=	lang/ruby
MODRUBY_REV ?=	1.9

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS +=	converters/ruby-json,${MODRUBY_FLAVOR} \
		databases/ruby-hiera,${MODRUBY_FLAVOR} \
		sysutils/ruby-augeas,${MODRUBY_FLAVOR} \
		sysutils/ruby-facter \
		sysutils/ruby-shadow,${MODRUBY_FLAVOR} \
		${MODRUBY_ICONV_DEPENDS}

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

do-install:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/defaults.rb
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	mv ${WRKINST}${SYSCONFDIR}/puppet ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${WRKSRC}/conf/*.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${FILESDIR}/puppet.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA} ${WRKSRC}/ext/emacs/* ${PREFIX}/share/emacs/site-lisp/
	gunzip ${PREFIX}/man/*/*.gz

post-install:
	find ${PREFIX} -type f \( -name '*.beforesubst' -or -name '*.orig' \) -exec rm {} \;
