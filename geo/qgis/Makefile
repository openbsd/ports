# $OpenBSD: Makefile,v 1.24 2011/10/18 07:06:32 ajacoutot Exp $

BROKEN-powerpc=	doesn't build, assembler error: operand out of range

COMMENT =	desktop geographical information system

ONLY_FOR_ARCHS =	${GCC4_ARCHS}

DISTNAME =	qgis-1.7.0
REVISION=		0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11

SHARED_LIBS =	qgis_core	5.0 \
		qgis_gui	4.0 \
		qgis_analysis	1.3 \
		qgispython	1.1 \
		qgissqlanyconnection 0.0 # 1.7

HOMEPAGE =	http://www.qgis.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MAINTAINER =	Landry Breuil <gaston@gcu.info>

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	devel/cmake \
		devel/gettext \
		lang/python

BUILD_DEPENDS =	x11/py-qt4>=4.8.4 \
		geo/gdal,-python \
		devel/bison

RUN_DEPENDS =	x11/py-qt4>=4.8.4 \
		geo/gdal,-python \
		devel/desktop-file-utils

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		devel/proj \
		x11/qt4>=4.7.2 \
		x11/qwt \
		www/fcgi \
		geo/gdal \
		geo/geos \
		devel/gsl \
		databases/postgresql

WANTLIB += 	ICE SM X11 Xext Xi Xinerama Xrender c expat \
		fontconfig freetype glib-2.0 gthread-2.0 lcms m \
		mng png pthread gobject-2.0 util stdc++ z proj \
		QtGui QtNetwork QtXml QtSql QtCore QtSvg \
		QtWebKit gdal geos_c gsl gslcblas pq qwt fcgi
WANTLIB += ${MODPY_WANTLIB} jpeg tiff

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS =	-DWITH_MAPSERVER=TRUE
USE_GROFF =	Yes

pre-configure:
		# otherwise takes precedence over systemwide file
		rm ${WRKSRC}/cmake/FindIconv.cmake
		${SUBST_CMD} ${WRKSRC}/cmake/Find{GDAL,GEOS,Postgres}.cmake

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
		ln ${PREFIX}/share/{qgis/images/icons,pixmaps}/qgis-icon.png
		${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c \
			${WRKSRC}/debian/qgis.desktop \
			${PREFIX}/share/applications/qgis.desktop

.include <bsd.port.mk>
