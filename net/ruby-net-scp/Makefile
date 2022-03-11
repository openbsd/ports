COMMENT =		pure-Ruby implementation of the SCP protocol

DISTNAME =		net-scp-1.2.1
CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=2.6.5

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake

TEST_DEPENDS =		devel/ruby-mocha,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
