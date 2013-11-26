# $OpenBSD: Makefile,v 1.4 2013/11/26 14:53:33 bcallah Exp $

COMMENT =	graphical music player focused on a clean ui
DISTNAME =	musique-1.3
CATEGORIES =	audio

HOMEPAGE =	http://flavio.tordini.org/musique/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

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
		x11/gtk+2,-guic

WRKDIST =	${WRKDIR}/musique
MAKE_FLAGS =	CXX="${CXX}"
FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}
NO_TEST =	Yes

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} qmake4 PREFIX=${PREFIX}

post-configure:
	perl -pi -e "s,/usr/include,${LOCALBASE}/include,g" ${WRKSRC}/Makefile

.include <bsd.port.mk>
