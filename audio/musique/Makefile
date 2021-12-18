# $OpenBSD: Makefile,v 1.29 2021/12/18 10:25:31 rsadowski Exp $

COMMENT =	graphical music player focused on a clean ui
V =		1.10.1
DISTNAME =	musique-${V}
CATEGORIES =	audio
REVISION =	1

HOMEPAGE =	http://flavio.tordini.org/musique/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Sql Qt5Widgets c m mpv tag

MASTER_SITES =	https://github.com/flaviotordini/musique/releases/download/$V/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/qmake \
		x11/qt5

LIB_DEPENDS =	audio/taglib \
		multimedia/mpv \
		x11/qt5/qtdeclarative

BUILD_DEPENDS =	multimedia/qtav

RUN_DEPENDS =	devel/desktop-file-utils \
		multimedia/qtav \
		x11/gtk+3,-guic

NO_TEST =	Yes

pre-configure:
	perl -pi -e 's,/usr/include,${LOCALBASE}/include,' ${WRKSRC}/musique.pro

.include <bsd.port.mk>
