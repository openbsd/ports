COMMENT =	Qt6 configuration tool

GH_ACCOUNT =		trialuser02
GH_PROJECT =		qt6ct
GH_TAGNAME =		0.9

CATEGORIES =		x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

SHARED_LIBS +=		qt6ct-common              0.1 # 0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m
WANTLIB += xkbcommon

# BSD
PERMIT_PACKAGE=		Yes

MODULES =		devel/cmake \
			x11/qt6

RUN_DEPENDS =		devel/desktop-file-utils

.include <bsd.port.mk>
