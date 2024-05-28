COMMENT =		terminal string styling

DISTNAME =		pastel-0.8.0
CATEGORIES =		devel
HOMEPAGE =		https://ttytoolkit.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE = 	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		sysutils/ruby-tty-color,${MODRUBY_FLAVOR}>=0.5,<1

.include <bsd.port.mk>
