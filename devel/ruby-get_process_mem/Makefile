COMMENT =	get memory usage of a process

DISTNAME =	get_process_mem-0.2.7
CATEGORIES =	devel
HOMEPAGE =	https://github.com/schneems/get_process_mem
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.0,<2

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
