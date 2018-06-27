# $OpenBSD: Makefile,v 1.14 2018/06/27 21:03:54 espie Exp $

COMMENT =	small and fast Qt image viewer

GH_ACCOUNT =	nomacs
GH_PROJECT =	nomacs
GH_TAGNAME =	3.8.0
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://nomacs.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  nomacsCore                3.0 # 3.3

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets c exiv2 lcms2 m opencv_core opencv_imgproc
WANTLIB += pthread raw tiff quazip
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake \
			x11/qt5 \

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		archivers/quazip \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/libraw \
			graphics/opencv \
			graphics/tiff \
			x11/qt5/qtsvg

CONFIGURE_ARGS =	-DUSE_SYSTEM_QUAZIP:Bool=ON \
			-DDISABLE_QT_DEBUG:Bool=ON \
			-DENABLE_TRANSLATIONS:Bool=ON

WRKDIST =		${WRKDIR}/${PKGNAME}/ImageLounge

.include <bsd.port.mk>
