# $OpenBSD: Makefile,v 1.1.1.1 2016/01/24 10:06:15 landry Exp $

SHARED_ONLY =		Yes

COMMENT =		small and fast Qt image viewer

V = 			3.0.0
DISTNAME =		nomacs-${V}

CATEGORIES =		graphics

HOMEPAGE =		http://www.nomacs.org

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

GH_ACCOUNT =		nomacs
GH_PROJECT =		nomacs
GH_COMMIT =		5821af531ea267822791b69eb18196dcbcf9cc2e

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets c exiv2 lcms2 m opencv_core opencv_imgproc
WANTLIB += pthread raw tiff webp quazip

MODULES =		devel/cmake \
			x11/qt5 \
			gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		archivers/quazip \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/libraw \
			graphics/opencv \
			graphics/tiff

CONFIGURE_ARGS =	-DUSE_SYSTEM_WEBP:Bool=ON \
			-DUSE_SYSTEM_QUAZIP:Bool=ON \
			-DDISABLE_QT_DEBUG:Bool=ON

WRKDIST =		${WRKDIR}/nomacs-${GH_COMMIT}/ImageLounge

NO_TEST =		Yes

.include <bsd.port.mk>
