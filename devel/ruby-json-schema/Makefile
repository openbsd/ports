COMMENT =		json schema validator

DISTNAME =		json-schema-4.3.1
CATEGORIES =		devel
HOMEPAGE =		http://github.com/voxpupuli/json-schema/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE = 	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	www/ruby-addressable,${MODRUBY_FLAVOR}>=2.8

.include <bsd.port.mk>
