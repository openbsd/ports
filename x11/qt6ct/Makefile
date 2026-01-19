COMMENT =		Qt6 configuration tool

DIST_TUPLE =		github	ilya-fedin	qt6ct	0.10	.
REVISION =		3

CATEGORIES =		x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

SHARED_LIBS =		qt6ct-common              1.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6IconThemes Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Widgets c m xkbcommon

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt6

LIB_DEPENDS =		devel/kf6/kcolorscheme \
			devel/kf6/kconfig \
			devel/kf6/kiconthemes \
			x11/qt6/qtdeclarative

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf6/qqc2-desktop-style

.include <bsd.port.mk>
