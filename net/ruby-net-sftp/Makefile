# $OpenBSD: Makefile,v 1.10 2010/09/28 20:12:18 jeremy Exp $

COMMENT =	pure-ruby implementation of the SFTP client protocol

DISTNAME =	net-sftp-2.0.2
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE_CDROM =		yes
PERMIT_PACKAGE_FTP =		yes
PERMIT_DISTFILES_CDROM =	yes
PERMIT_DISTFILES_FTP =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-net-ssh->=2.0.0:net/ruby-net-ssh

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

REGRESS_DEPENDS =	:ruby-mocha-*:devel/ruby-mocha
do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib test/test_all.rb

.include <bsd.port.mk>
