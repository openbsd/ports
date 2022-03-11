COMMENT =	VLC-based Phonon backend
VERSION =	0.11.2
DISTNAME =	phonon-backend-vlc-${VERSION}
REVISION =	0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}
EXTRACT_SUFX = .tar.xz

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m phonon4qt5
WANTLIB += phonon4qt5experimental vlc vlccore

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		x11/vlc

NO_TEST =		Yes

.include <bsd.port.mk>
