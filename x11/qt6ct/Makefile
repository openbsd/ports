COMMENT =		Qt6 configuration tool

DIST_TUPLE =		github	ilya-fedin	qt6ct	0.10	.

CATEGORIES =		x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

SHARED_LIBS =		qt6ct-common              1.0

WANTLIB =		${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network \
			Qt6OpenGL Qt6Widgets c m xkbcommon

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt6

RUN_DEPENDS =		devel/desktop-file-utils

.include <bsd.port.mk>
