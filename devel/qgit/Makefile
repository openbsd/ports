COMMENT =	Qt git repository viewer

GH_ACCOUNT =	tibirna
GH_PROJECT =	qgit
GH_TAGNAME =	qgit-2.10
DISTNAME =	${GH_TAGNAME}
REVISION =	0

CATEGORIES =	devel x11

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c m

MODULES =	devel/cmake \
		x11/qt5

RUN_DEPENDS =	devel/git \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

.include <bsd.port.mk>
