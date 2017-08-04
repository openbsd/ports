# $OpenBSD: Makefile,v 1.53 2017/08/04 21:55:19 dcoppa Exp $

COMMENT =	standalone YouTube.com video browser/player

GH_ACCOUNT =	flaviotordini
GH_PROJECT =	minitube
GH_TAGNAME =	2.8

CATEGORIES =	www multimedia

HOMEPAGE =	http://flavio.tordini.org/minitube

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	devel/qmake x11/qt5

WANTLIB +=	GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Sql
WANTLIB +=	Qt5Widgets c m phonon4qt5 ${COMPILER_LIBCXX}

LIB_DEPENDS +=	multimedia/phonon-qt5
RUN_DEPENDS +=	multimedia/phonon-backend/gstreamer,qt5 \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXX=${CXX} \
		LINK=${CXX}

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/minitube.pro

.include <bsd.port.mk>
