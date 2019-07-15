# $OpenBSD: Makefile,v 1.35 2019/07/15 13:21:51 gonzalo Exp $

USE_WXNEEDED =		Yes

COMMENT =		browse and download YouTube videos

DISTNAME =		smtube-19.6.0

CATEGORIES =		multimedia x11

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		https://www.smtube.org/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Script Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets c m pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smtube/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt5
RUN_DEPENDS =		x11/smplayer \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		x11/qt5/qtscript \
			x11/qt5/qtwebkit

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smtube

MAKE_FLAGS =		QMAKE=${MODQT_QMAKE} \
			LRELEASE=${MODQT_LRELEASE}

.include <bsd.port.mk>
