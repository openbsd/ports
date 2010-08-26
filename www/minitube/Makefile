# $OpenBSD: Makefile,v 1.5 2010/08/26 21:30:42 ajacoutot Exp $

COMMENT =	standalone YouTube.com video browser/player

DISTNAME =	minitube-1.1
REVISION =	1
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

WANTLIB +=	QtDBus QtGui QtNetwork QtXml phonon
WANTLIB +=	c m pthread stdc++

RUN_DEPENDS =	::multimedia/gstreamer-0.10/plugins-base \
		::multimedia/gstreamer-0.10/plugins-good \
		::multimedia/gstreamer-0.10/plugins-bad \
		::multimedia/gstreamer-0.10/plugins-ffmpeg \
		:gnome-icon-theme-*:x11/gnome/icon-theme \
		:desktop-file-utils-*:devel/desktop-file-utils

WRKDIST =	${WRKDIR}/minitube

FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}

do-configure:
	cd ${WRKDIST} && env -i ${CONFIGURE_ENV} qmake4 PREFIX=${PREFIX}

.include <bsd.port.mk>
