# $OpenBSD: Makefile,v 1.41 2015/10/03 20:28:43 dcoppa Exp $

COMMENT =	standalone YouTube.com video browser/player

DISTNAME =	minitube-2.5

CATEGORIES =	www multimedia

HOMEPAGE =	http://flavio.tordini.org/minitube

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://distfiles.bsdfrog.org/

MODULES =	x11/qt4

WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB +=	freetype lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB +=	lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtXml m
WANTLIB +=	phonon pthread stdc++

RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXX=${CXX} \
		LINK=${CXX}

FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}

NO_TEST =	Yes

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/qmake4 PREFIX=${PREFIX}

.include <bsd.port.mk>
