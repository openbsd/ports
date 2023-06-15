COMMENT =	Qt6 configuration tool

GH_ACCOUNT =		trialuser02
GH_PROJECT =		qt6ct
GH_TAGNAME =		0.8

CATEGORIES =		x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

SHARED_LIBS +=		qt6ct-common              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m
WANTLIB += xkbcommon

# BSD
PERMIT_PACKAGE=		Yes

MODULES =		devel/qmake \
			x11/qt6

BUILD_DEPENDS =		x11/qt6/qttools
RUN_DEPENDS =		devel/desktop-file-utils

.include <bsd.port.mk>
