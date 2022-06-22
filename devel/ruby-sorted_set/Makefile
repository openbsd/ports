COMMENT =		a set whose elements are sorted in ascending order

DISTNAME =		sorted_set-1.0.3

CATEGORIES =		devel

HOMEPAGE =		https://github.com/knu/sorted_set

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD 2 clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-rbtree,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
