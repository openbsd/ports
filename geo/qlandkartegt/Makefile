# $OpenBSD: Makefile,v 1.27 2017/07/26 22:45:23 sthen Exp $

COMMENT =	garmin gps map management tool

DISTNAME =	qlandkartegt-1.8.1
CATEGORIES =	geo x11
REVISION =	0

HOMEPAGE =	http://www.qlandkarte.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qlandkartegt/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	devel/cmake x11/qt4
WANTLIB +=	GL GLU c m pthread ${COMPILER_LIBCXX} z gdal gps>=19
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

CONFIGURE_ARGS =	-DQK_QT5_PORT=No

post-extract:
	@find ${WRKDIST} -name *.orig -exec rm {} \;
	@rm ${WRKSRC}/cmake/Modules/FindGDAL.cmake
	@rm ${WRKSRC}/cmake/Modules/FindJPEG.cmake

.include <bsd.port.mk>
