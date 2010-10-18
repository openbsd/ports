# $OpenBSD: Makefile,v 1.15 2010/10/18 18:13:12 espie Exp $

COMMENT =	desktop geographical information system

ONLY_FOR_ARCHS =	${GCC4_ARCHS}

DISTNAME =	qgis_1.5.0
PKGNAME =	${DISTNAME:L:S/_/-/}
REVISION =	1

CATEGORIES =	geo x11

SHARED_LIBS =	qgis_core	3.0 \
		qgis_gui	2.0 \
		qgis_analysis	1.1 \
		qgispython	1.0 # .1.3

HOMEPAGE =	http://www.qgis.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MAINTAINER =	Landry Breuil <gaston@gcu.info>

MASTER_SITES =	http://download.osgeo.org/qgis/src/
WRKDIST =	${WRKDIR}/${DISTNAME:S/_/-/}

MODULES =	devel/cmake \
		devel/gettext \
		lang/python

BUILD_DEPENDS =	::x11/py-qt4 \
		:py-gdal-*:geo/gdal,-python \
		::devel/bison

RUN_DEPENDS =	::x11/py-qt4 \
		:py-gdal-*:geo/gdal,-python \
		:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		::devel/proj \
		::x11/qt4 \
		::geo/gdal \
		::geo/geos \
		::devel/gsl \
		:postgresql-client-*:databases/postgresql

WANTLIB += 	ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig \
		freetype glib-2.0 gthread-2.0 m png pthread gobject-2.0 util \
		stdc++ z proj QtGui QtNetwork QtXml QtSql QtCore QtSvg QtWebKit\
		gdal geos_c gsl gslcblas pq

CONFIGURE_ENV+=	VERBOSE=1
USE_GROFF =	Yes
pre-configure:
		${SUBST_CMD} ${WRKSRC}/cmake/Find{GDAL,GEOS,Postgres}.cmake

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
		ln ${PREFIX}/share/{qgis/images/icons,pixmaps}/qgis-icon.png
		${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c \
			${WRKSRC}/debian/qgis.desktop \
			${PREFIX}/share/applications/qgis.desktop

.include <bsd.port.mk>
