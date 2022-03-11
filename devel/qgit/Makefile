COMMENT =	Qt git repository viewer

GH_ACCOUNT =	tibirna
GH_PROJECT =	qgit
GH_TAGNAME =	qgit-2.9
DISTNAME =	${GH_TAGNAME}

CATEGORIES =	devel x11

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c m

MODULES =	devel/cmake \
		x11/qt5

RUN_DEPENDS =	devel/git \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
