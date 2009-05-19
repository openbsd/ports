# $OpenBSD: Makefile,v 1.8 2009/05/19 21:09:24 pirofti Exp $

COMMENT =	pure-ruby implementation of the SFTP client protocol

DISTNAME =	net-sftp-2.0.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE_CDROM =		yes
PERMIT_PACKAGE_FTP =		yes
PERMIT_DISTFILES_CDROM =	yes
PERMIT_DISTFILES_FTP =		yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=net-ssh/}

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-net-ssh->=2.0.0:net/ruby-net-ssh

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

REGRESS_DEPENDS =	:ruby-mocha-*:devel/ruby-mocha
do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib test/test_all.rb

.include <bsd.port.mk>
