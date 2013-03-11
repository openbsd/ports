# $OpenBSD: Makefile,v 1.20 2013/03/11 11:35:56 espie Exp $

COMMENT =	pure-ruby implementation of the SSH2 client protocol

DISTNAME =	net-ssh-2.0.15
REVISION =	5
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE_CDROM =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -Ilib -rubygems test/test_all.rb

.include <bsd.port.mk>
