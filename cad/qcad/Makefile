# $OpenBSD: Makefile,v 1.36 2020/03/07 17:35:00 rsadowski Exp $

COMMENT =	Qt-based 2D CAD system

GH_ACCOUNT =	qcad
GH_PROJECT =	qcad
GH_TAGNAME =	v3.23.0.0
REVISION =	1

SO_VERSION =	0.0
QCAD_LIBS =	qcadcore \
		qcadecmaapi \
		qcadentity \
		qcadgrid \
		qcadgui \
		qcadoperations \
		qcadsnap \
		qcadspatialindex \
		qcadstemmer \
		spatialindexnavel

.for _lib in ${QCAD_LIBS}
SHARED_LIBS +=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES =	cad graphics

HOMEPAGE =	https://www.qcad.org

# GPLv3
# https://raw.githubusercontent.com/qcad/qcad/master/LICENSE.txt
PERMIT_PACKAGE =Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Designer
WANTLIB += Qt5Gui Qt5Help Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Script Qt5ScriptTools Qt5Sql Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += Qt5XmlPatterns c cups jpeg m sqlite3 tiff z

MODULES =	devel/qmake \
		x11/qt5

BUILD_DEPENDS =	x11/qt5/qtimageformats
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	print/cups,-libs \
		x11/qt5/qtscript \
		x11/qt5/qtsvg \
		x11/qt5/qttools \
		x11/qt5/qtxmlpatterns

SEPARATE_BUILD =No
USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	# Do not require specific Qt version
	sed -i "s|\$$\$${QT_VERSION}|5.5.0|g" \
		${WRKSRC}/src/3rdparty/3rdparty.pro
	${SUBST_CMD} ${WRKSRC}/src/core/RS.cpp \
		${WRKSRC}/src/core/RSettings.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/release/qcad-bin ${PREFIX}/bin/qcad
.for _lib in ${QCAD_LIBS}
	${INSTALL_DATA} ${WRKSRC}/release/lib${_lib}.so \
		${PREFIX}/lib/lib${_lib}.so.${SO_VERSION}
.endfor
	${INSTALL_DATA} ${WRKSRC}/release/*.a ${PREFIX}/lib/
	${INSTALL_MAN} ${WRKSRC}/qcad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/qcad.desktop ${PREFIX}/share/applications
	cp -Rp ${WRKSRC}/examples ${PREFIX}/share/examples/qcad
.for dir in fonts libraries linetypes patterns plugins scripts themes ts
	cp -Rp ${WRKSRC}/${dir} ${PREFIX}/share/qcad/
.endfor
	find ${PREFIX} \( -name .gitignore -or -name *.pr[io] -or -name *.ts \) -delete
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/qcad
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/scripts/qcad_icon.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
