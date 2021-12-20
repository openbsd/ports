# $OpenBSD: Makefile,v 1.40 2021/12/20 11:46:41 gonzalo Exp $

USE_WXNEEDED =		Yes

COMMENT =		browse and download YouTube videos

DISTNAME =		smtube-21.10.0

CATEGORIES =		multimedia x11

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		https://www.smtube.org/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smtube/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/smplayer

LIB_DEPENDS =		x11/qt5/qtwebkit

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smtube

MAKE_FLAGS =		QMAKE=${MODQT_QMAKE} \
			LRELEASE=${MODQT_LRELEASE}

.include <bsd.port.mk>
