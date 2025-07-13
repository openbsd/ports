COMMENT =	Qt git repository viewer

GH_ACCOUNT =	tibirna
GH_PROJECT =	qgit
GH_TAGNAME =	qgit-2.12
DISTNAME =	${GH_TAGNAME}

CATEGORIES =	devel x11

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB += Qt6Widgets c m

MODULES =	devel/cmake \
		x11/qt6

RUN_DEPENDS =	devel/git \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	x11/qt6/qt5compat

.include <bsd.port.mk>
