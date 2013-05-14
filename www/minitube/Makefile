# $OpenBSD: Makefile,v 1.28 2013/05/14 10:28:17 dcoppa Exp $

COMMENT =	standalone YouTube.com video browser/player

DISTNAME =	minitube-2.0
CATEGORIES =	www multimedia

HOMEPAGE =	http://flavio.tordini.org/minitube

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://flavio.tordini.org/files/minitube/

MODULES =	x11/qt4

WANTLIB +=	ICE QtDBus QtGui QtNetwork QtXml SM X11
WANTLIB +=	Xext Xi Xinerama Xrender c fontconfig
WANTLIB +=	freetype m phonon pthread stdc++

RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

WRKDIST =	${WRKDIR}/minitube

FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}

NO_TEST =	Yes

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} qmake4 PREFIX=${PREFIX}

post-configure:
	${SUBST_CMD} ${WRKSRC}/src/iconloader/qticonloader.cpp

.include <bsd.port.mk>
