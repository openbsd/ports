# $OpenBSD: Makefile,v 1.33 2019/10/05 22:29:30 naddy Exp $

COMMENT =	garmin GPS map management tool

DISTNAME =	qlandkartegt-1.8.1
CATEGORIES =	geo x11
REVISION =	4

HOMEPAGE =	http://www.qlandkarte.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qlandkartegt/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE =		Yes

MODULES =	devel/cmake x11/qt4

WANTLIB +=	GL GLU c m pthread ${COMPILER_LIBCXX} z gdal gps>=19
WANTLIB +=	exif QtDBus QtGui QtNetwork QtOpenGL QtSql QtXml QtCore proj
WANTLIB +=	QtWebKit QtXmlPatterns phonon jpeg dmtx QtScript

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	geo/gpsbabel
LIB_DEPENDS +=	devel/proj \
		graphics/libdmtx \
		graphics/libexif \
		geo/gdal \
		misc/gpsd>=2.95
RUN_DEPENDS =	devel/desktop-file-utils \
		geo/garmindev \
		geo/gpsbabel

CONFIGURE_ARGS =	-DQK_QT5_PORT=No \
			-DCMAKE_CXX_FLAGS=-DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1

post-extract:
	@find ${WRKDIST} -name *.orig -exec rm {} \;
	@rm ${WRKSRC}/cmake/Modules/FindGDAL.cmake
	@rm ${WRKSRC}/cmake/Modules/FindJPEG.cmake

.include <bsd.port.mk>

# fix error: #error Must have C++11 or newer.
# XXX this should be retried once moving to ports-gcc>=8
.if ${CHOSEN_COMPILER} == "ports-gcc"
CONFIGURE_ENV +=     CXXFLAGS="${CXXFLAGS} -std=c++11"
.endif
