# $OpenBSD: Makefile,v 1.17 2016/06/07 03:28:47 gonzalo Exp $

COMMENT =		browse and download YouTube videos

DISTNAME =		smtube-16.6.0

CATEGORIES =		multimedia x11

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		http://smtube.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Script Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets c m pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smtube/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt5
RUN_DEPENDS =		x11/smplayer \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smtube

MAKE_FLAGS =		QMAKE=${LOCALBASE}/bin/qmake-qt5 \
			LRELEASE=${LOCALBASE}/bin/lrelease-qt5

.include <bsd.port.mk>
