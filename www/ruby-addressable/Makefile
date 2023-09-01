COMMENT =	replacement for Ruby's URI implementation

DISTNAME = 	addressable-2.8.5
CATEGORIES =	www

HOMEPAGE =	https://github.com/sporkmonger/addressable

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		net/ruby-public_suffix,${MODRUBY_FLAVOR},>=2.0.2,<6

# Tests require dependencies not in ports

.include <bsd.port.mk>
