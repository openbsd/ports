# $OpenBSD: Makefile.inc,v 1.1 2013/03/08 16:12:47 ajacoutot Exp $

COMMENT ?=	centralised configuration management for networks
DISTNAME ?=	puppet-${VERSION}
PKGNAME ?=	ruby-${DISTNAME}
HOMEPAGE ?=	https://puppetlabs.com
MASTER_SITES ?=	${HOMEPAGE}/downloads/puppet/
MAINTAINER ?=	Robert Nagy <robert@openbsd.org>
NO_REGRESS ?=	Yes
NO_BUILD ?=	Yes
FILESDIR ?=	${.CURDIR}/../files

CATEGORIES +=	sysutils net
MODULES +=	lang/ruby

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS +=	converters/ruby-json,${MODRUBY_FLAVOR} \
		sysutils/ruby-facter \
		${MODRUBY_ICONV_DEPENDS}

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/defaults.rb
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	mv ${WRKINST}${SYSCONFDIR}/puppet ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${WRKSRC}/conf/*.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${FILESDIR}/puppet.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA} ${WRKSRC}/ext/emacs/* ${PREFIX}/share/emacs/site-lisp/
