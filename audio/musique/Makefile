# $OpenBSD: Makefile,v 1.24 2020/06/13 14:45:28 rsadowski Exp $

COMMENT =	graphical music player focused on a clean ui
V =		1.7
DISTNAME =	musique-${V}
CATEGORIES =	audio
EXTRACT_SUFX =	.tar.bz2
REVISION =	1

HOMEPAGE =	http://flavio.tordini.org/musique/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Sql Qt5Widgets c m mpv tag

MASTER_SITES =	https://github.com/flaviotordini/musique/releases/download/$V/

# musique-3.1.tar.bz2 is actually gzipped.
# i would just use GH_* rather than EXTRACT_CASES, but the git tree uses
# submodules (build fails with missing media.h) so this is easier.
# https://github.com/flaviotordini/musique/issues/25
EXTRACT_CASES += musique*.tar.bz2) ${GZIP_CMD} -d <${FULLDISTDIR}/$$archive | ${TAR} xf -;;

MODULES =	devel/qmake \
		x11/qt5

LIB_DEPENDS =	audio/taglib \
		multimedia/mpv

BUILD_DEPENDS =	multimedia/qtav

RUN_DEPENDS =	devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/qtav \
		x11/gtk+3,-guic

NO_TEST =	Yes

pre-configure:
	perl -pi -e 's,/usr/include,${LOCALBASE}/include,' ${WRKSRC}/musique.pro
	perl -pi -e 's,imagedownloader.h,../imagedownloader.h,' \
		${WRKSRC}/src/model/artist.cpp

.include <bsd.port.mk>
