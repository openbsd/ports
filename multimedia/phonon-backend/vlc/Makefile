# $OpenBSD: Makefile,v 1.10 2020/06/13 16:22:52 rsadowski Exp $

COMMENT =	VLC-based Phonon backend
VERSION =	0.10.3
DISTNAME =	phonon-backend-vlc-${VERSION}

MASTER_SITES =		https://download.kde.org/stable/phonon/phonon-backend-vlc/${VERSION}/

WANTLIB += ${COMPILER_LIBCXX} m vlc vlccore

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		x11/vlc>=2

FLAVORS =	qt5
FLAVOR =	qt5

.if ${FLAVOR:Mqt5}
WANTLIB += Qt5Core Qt5Gui Qt5Widgets
.else
WANTLIB += QtGui
.endif

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/phonon-vlc-${VERSION}

.include <bsd.port.mk>
