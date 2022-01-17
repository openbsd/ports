# $OpenBSD: Makefile,v 1.6 2022/01/17 14:24:38 landry Exp $

COMMENT =	gpx file viewer

GH_PROJECT =	GPXSee
GH_ACCOUNT =	tumic0
GH_TAGNAME =	10.1
PKGNAME =	${DISTNAME:L}

CATEGORIES =	geo x11

HOMEPAGE =	https://www.gpxsee.org
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes
MODULES =	devel/qmake x11/qt5

RUN_DEPENDS+=	devel/desktop-file-utils
RUN_DEPENDS +=	misc/shared-mime-info
RUN_DEPENDS +=	x11/gtk+3,-guic

LIB_DEPENDS +=	x11/qt5/qtlocation

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Positioning Qt5PrintSupport Qt5Sql Qt5Widgets c m

.include <bsd.port.mk>
