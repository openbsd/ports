# $OpenBSD: Makefile,v 1.21 2019/07/12 20:43:37 sthen Exp $

COMMENT =	graphical music player focused on a clean ui
DISTNAME =	musique-1.4
CATEGORIES =	audio
REVISION =	7

HOMEPAGE =	http://flavio.tordini.org/musique/

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://flavio.tordini.org/files/musique/

WANTLIB += ICE QtDBus QtGui QtNetwork QtSql QtXml SM
WANTLIB += X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m phonon pthread ${COMPILER_LIBCXX} tag

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/qmake x11/qt4

LIB_DEPENDS =	audio/taglib

RUN_DEPENDS =	devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		x11/gtk+3,-guic

WRKDIST =	${WRKDIR}/musique
NO_TEST =	Yes

pre-configure:
	perl -pi -e 's,/usr/include,${LOCALBASE}/include,' ${WRKSRC}/musique.pro

.include <bsd.port.mk>
