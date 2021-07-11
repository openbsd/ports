# $OpenBSD: Makefile,v 1.4 2021/07/11 05:53:45 kirby Exp $

COMMENT =	gpx file viewer

GH_PROJECT =	GPXSee
GH_ACCOUNT =	tumic0
GH_TAGNAME =	9.2
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

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Sql Qt5Widgets c m

.include <bsd.port.mk>
