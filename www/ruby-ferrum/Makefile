COMMENT =	control headless Chrome browser

DISTNAME = 	ferrum-0.17.2
CATEGORIES =	www

HOMEPAGE =	https://ferrum.rubycdp.com/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR},>=1.1,<2 \
			www/ruby-addressable,${MODRUBY_FLAVOR},>=2.5,<3 \
			www/ruby-webrick,${MODRUBY_FLAVOR},>=1.7,<2 \
			www/ruby-websocket-driver,${MODRUBY_FLAVOR},>=0.7,<1

# Tests require dependencies not in ports
NO_TEST =	No

.include <bsd.port.mk>
