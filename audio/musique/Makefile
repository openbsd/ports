COMMENT =	graphical music player focused on a clean ui
V =		1.12
DISTNAME =	musique-${V}
CATEGORIES =	audio

HOMEPAGE =	https://flavio.tordini.org/musique/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Sql Qt6Widgets c m mpv tag

SITES =		https://github.com/flaviotordini/musique/releases/download/$V/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/qmake \
		x11/qt6

LIB_DEPENDS =	audio/taglib \
		multimedia/mpv \
		x11/qt6/qtdeclarative

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

MODQMAKE_ARGS =	QMAKE_LRELEASE=${MODQT_LRELEASE}

NO_TEST =	Yes

pre-configure:
	perl -pi -e 's,/usr/include,${LOCALBASE}/include,' ${WRKSRC}/musique.pro

.include <bsd.port.mk>
