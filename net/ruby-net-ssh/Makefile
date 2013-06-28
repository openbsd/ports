# $OpenBSD: Makefile,v 1.21 2013/06/28 16:16:07 jasper Exp $

COMMENT =	pure-ruby implementation of the SSH2 client protocol

DISTNAME =	net-ssh-2.1.4
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -Ilib -Itest -rrubygems test/test_all.rb

.include <bsd.port.mk>
