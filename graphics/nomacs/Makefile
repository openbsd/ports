# $OpenBSD: Makefile,v 1.4 2016/09/13 08:21:36 kirby Exp $

COMMENT =		small and fast Qt image viewer

GH_ACCOUNT =	nomacs
GH_PROJECT =	nomacs
GH_TAGNAME =	3.4

CATEGORIES =		graphics

HOMEPAGE =		http://www.nomacs.org

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

SHARED_LIBS +=  nomacsCore                0.0 # 3.3
SHARED_LIBS +=  nomacsGui                 0.0 # 3.3
SHARED_LIBS +=  nomacsLoader              0.0 # 3.3

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets c exiv2 lcms2 m opencv_core opencv_imgproc
WANTLIB += pthread raw tiff quazip

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

CONFIGURE_ARGS =	-DUSE_SYSTEM_QUAZIP:Bool=ON \
			-DDISABLE_QT_DEBUG:Bool=ON

WRKDIST =		${WRKDIR}/${PKGNAME}/ImageLounge

NO_TEST =		Yes

.include <bsd.port.mk>
