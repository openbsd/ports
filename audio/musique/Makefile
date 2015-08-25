# $OpenBSD: Makefile,v 1.9 2015/08/25 13:18:24 sthen Exp $

COMMENT =	graphical music player focused on a clean ui
DISTNAME =	musique-1.4
CATEGORIES =	audio
REVISION =	1

HOMEPAGE =	http://flavio.tordini.org/musique/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://flavio.tordini.org/files/musique/

WANTLIB += ICE QtDBus QtGui QtNetwork QtSql QtXml SM
WANTLIB += X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m phonon pthread stdc++ tag

MODULES =	x11/qt4

LIB_DEPENDS =	audio/taglib

RUN_DEPENDS =	devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ugly \
		x11/gtk+3,-guic

WRKDIST =	${WRKDIR}/musique
MAKE_FLAGS =	CXX="${CXX}"
FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}
NO_TEST =	Yes

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} qmake4 PREFIX=${PREFIX}

post-configure:
	sed -i "s,/usr/include,${LOCALBASE}/include,g" ${WRKSRC}/Makefile

.include <bsd.port.mk>
