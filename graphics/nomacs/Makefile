# $OpenBSD: Makefile,v 1.11 2017/07/27 09:55:45 sthen Exp $

COMMENT =		small and fast Qt image viewer

GH_ACCOUNT =	nomacs
GH_PROJECT =	nomacs
GH_TAGNAME =	3.6.1
REVISION =	0

CATEGORIES =		graphics

HOMEPAGE =		http://www.nomacs.org

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

SHARED_LIBS +=  nomacsCore                2.0 # 3.3

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets c exiv2 lcms2 m opencv_core opencv_imgproc
WANTLIB += pthread raw tiff quazip
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake \
			x11/qt5 \

COMPILER =		gcc

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		archivers/quazip \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/libraw \
			graphics/opencv \
			graphics/tiff \
			x11/qt5/qtsvg

CONFIGURE_ARGS =	-DUSE_SYSTEM_QUAZIP:Bool=ON \
			-DDISABLE_QT_DEBUG:Bool=ON

WRKDIST =		${WRKDIR}/${PKGNAME}/ImageLounge

NO_TEST =		Yes

.include <bsd.port.mk>
