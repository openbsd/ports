COMMENT =	standalone YouTube.com video browser/player

V =		3.9.3
DISTNAME =	minitube-$V
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	www multimedia

HOMEPAGE =	https://flavio.tordini.org/minitube

# GPLv3
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Sql Qt5Widgets Qt5X11Extras c m mpv

MASTER_SITES =	https://github.com/flaviotordini/minitube/releases/download/$V/

MODULES =	devel/qmake x11/qt5

LIB_DEPENDS +=	multimedia/mpv \
		x11/qt5/qtdeclarative \
		x11/qt5/qtx11extras

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXX="${CXX}" \
		LINK="${CXX}"

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/minitube.pro

.include <bsd.port.mk>
