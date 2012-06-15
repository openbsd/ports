# $OpenBSD: Makefile,v 1.20 2012/06/15 08:32:18 ajacoutot Exp $

COMMENT =	standalone YouTube.com video browser/player

DISTNAME =	minitube-1.7.1
REVISION =	0

CATEGORIES =	www multimedia

HOMEPAGE =	http://flavio.tordini.org/minitube

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>, \
		Jacob Meuser <jakemsr@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://flavio.tordini.org/files/minitube/

MODULES =	x11/qt4

WANTLIB +=	ICE QtDBus QtGui QtNetwork QtXml SM X11
WANTLIB +=	Xext Xi Xinerama Xrender c fontconfig
WANTLIB +=	freetype m phonon pthread stdc++

RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-base \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-bad \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		x11/gnome/icon-theme \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

WRKDIST =	${WRKDIR}/minitube

FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}

NO_REGRESS =	Yes

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} qmake4 PREFIX=${PREFIX}

post-configure:
	${SUBST_CMD} ${WRKSRC}/src/iconloader/qticonloader.cpp

.include <bsd.port.mk>
