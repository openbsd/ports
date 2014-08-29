# $OpenBSD: Makefile,v 1.20 2014/08/29 12:01:41 sebastia Exp $

COMMENT =	garmin gps map management tool

DISTNAME =	qlandkartegt-1.7.7
CATEGORIES =	geo x11

HOMEPAGE =	http://www.qlandkarte.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qlandkartegt/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	devel/cmake x11/qt4
WANTLIB +=	GL GLU ICE SM X11 Xext c m pthread stdc++ z gdal gps>=19
WANTLIB +=	exif QtDBus QtGui QtNetwork QtOpenGL QtSql QtXml QtCore proj
WANTLIB +=	QtWebKit QtXmlPatterns phonon jpeg dmtx QtScript
BUILD_DEPENDS +=	geo/gpsbabel
LIB_DEPENDS +=	devel/proj \
		graphics/libdmtx \
		graphics/libexif \
		geo/gdal \
		misc/gpsd>=2.95
RUN_DEPENDS =	devel/desktop-file-utils \
		geo/garmindev \
		geo/gpsbabel

CONFIGURE_ARGS = -DCMAKE_BUILD_TYPE=Release

post-extract:
	@find ${WRKDIST} -name *.orig -exec rm {} \;
	@rm ${WRKSRC}/cmake/Modules/FindGDAL.cmake
	@rm ${WRKSRC}/cmake/Modules/FindJPEG.cmake

.include <bsd.port.mk>
