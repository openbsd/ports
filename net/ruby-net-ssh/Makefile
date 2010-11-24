# $OpenBSD: Makefile,v 1.16 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	pure-ruby implementation of the SSH2 client protocol

DISTNAME =	net-ssh-2.0.15
REVISION =	2
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE_CDROM =		yes
PERMIT_PACKAGE_FTP =		yes
PERMIT_DISTFILES_CDROM =	yes
PERMIT_DISTFILES_FTP =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib -rubygems test/test_all.rb

.include <bsd.port.mk>
