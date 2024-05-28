COMMENT =	powerful interactive command line prompt

DISTNAME =	tty-prompt-0.23.1
CATEGORIES =	sysutils
HOMEPAGE =	https://ttytoolkit.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	devel/ruby-pastel,${MODRUBY_FLAVOR}>=0.8,<1 \
		sysutils/ruby-tty-reader,${MODRUBY_FLAVOR}>=0.8,<1

.include <bsd.port.mk>
