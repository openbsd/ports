# $OpenBSD: Makefile,v 1.14 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	pure-ruby implementation of the SSH2 client protocol

DISTNAME =	net-ssh-2.0.15
REVISION =      1
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE_CDROM =		yes
PERMIT_PACKAGE_FTP =		yes
PERMIT_DISTFILES_CDROM =	yes
PERMIT_DISTFILES_FTP =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-highline-*:devel/ruby-highline,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-mocha-*:devel/ruby-mocha,${FLAVOR}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib -rubygems test/test_all.rb

.include <bsd.port.mk>
