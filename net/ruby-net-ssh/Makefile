COMMENT =	pure-ruby implementation of the SSH2 client protocol

DISTNAME =	net-ssh-2.9.2
CATEGORIES =	net

# MIT
PERMIT_PACKAGE =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake

TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
