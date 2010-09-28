# $OpenBSD: Makefile,v 1.13 2010/09/28 20:12:18 jeremy Exp $

COMMENT =	pure-ruby implementation of the SSH2 client protocol

DISTNAME =	net-ssh-2.0.15
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE_CDROM =		yes
PERMIT_PACKAGE_FTP =		yes
PERMIT_DISTFILES_CDROM =	yes
PERMIT_DISTFILES_FTP =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-highline-*:devel/ruby-highline

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	:ruby-mocha-*:devel/ruby-mocha \
			::devel/ruby-test-unit

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib -rubygems test/test_all.rb

PKG_ARCH=	*

.include <bsd.port.mk>
