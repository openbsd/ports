COMMENT = 	remote procedure calls over HTTP

DISTNAME = 	xmlrpc-0.3.2
CATEGORIES = 	www

HOMEPAGE =	https://github.com/ruby/xmlrpc

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Ruby
PERMIT_PACKAGE = Yes

MODULES = 	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-webrick,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
