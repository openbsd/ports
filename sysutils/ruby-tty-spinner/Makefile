COMMENT =	terminal spinner

DISTNAME =	tty-spinner-0.9.3
CATEGORIES =	sysutils
HOMEPAGE =	https://ttytoolkit.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	sysutils/ruby-tty-cursor,${MODRUBY_FLAVOR}>=0.7,<1

.include <bsd.port.mk>
