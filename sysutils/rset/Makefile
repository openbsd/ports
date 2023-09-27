COMMENT =	configure systems using any scripting language

DISTNAME =	rset-2.6

CATEGORIES =	sysutils

HOMEPAGE =	https://scriptedconfiguration.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += c

SITES =			https://scriptedconfiguration.org/code/

MODULES =		lang/ruby
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No

TEST_DEPENDS =		${MODRUBY_BUILD_DEPENDS} \
			www/ruby-webrick,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	simple

FAKE_FLAGS =		DESTDIR=''
TEST_FLAGS =		RUBY=${RUBY}

.include <bsd.port.mk>
