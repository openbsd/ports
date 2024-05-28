COMMENT =	process keyboard input

DISTNAME =	tty-reader-0.9.0
CATEGORIES =	sysutils
HOMEPAGE =	https://ttytoolkit.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	devel/ruby-wisper,${MODRUBY_FLAVOR},>2,<3 \
		sysutils/ruby-tty-cursor,${MODRUBY_FLAVOR}>=0.7,<1 \
		sysutils/ruby-tty-screen,${MODRUBY_FLAVOR}>=0.8,<1

.include <bsd.port.mk>
