# $OpenBSD: Makefile,v 1.9 2019/09/01 18:56:40 rsadowski Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.10.3
DISTNAME =	phonon-backend-vlc-${VERSION}

MASTER_SITES =		https://download.kde.org/stable/phonon/phonon-backend-vlc/${VERSION}/

WANTLIB += ${COMPILER_LIBCXX} m vlc vlccore

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		x11/vlc>=2

FLAVORS =	qt5
FLAVOR ?=

.if ${FLAVOR:Mqt5}
WANTLIB += Qt5Core Qt5Gui Qt5Widgets
.else
WANTLIB += QtGui
.endif

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/phonon-vlc-${VERSION}

.include <bsd.port.mk>
