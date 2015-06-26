# $OpenBSD: Makefile,v 1.15 2015/06/26 09:18:40 ajacoutot Exp $

COMMENT =	world maps
DISTNAME =	marble-${MODKDE4_VERSION}
REVISION =	2

SHARED_LIBS =	marblewidget		52.0 # 0.12
SHARED_LIBS +=	astro			 1.0 # 0.17

WANTLIB =  c m pthread z
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma
WANTLIB += gps protobuf quazip shp soprano

# TODO split non-KDE4 parts off

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

LIB_DEPENDS = 	archivers/quazip \
		devel/protobuf \
		devel/shapelib \
		misc/gpsd,-main

PATCHORIG =	.ports.orig

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QextSerialPort:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtLocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_liblocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_libwlocate:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_OpenCV:Bool=TRUE \
			-DEXPERIMENTAL_PYTHON_BINDINGS:Bool=FALSE \
			-DBUILD_MARBLE_TOOLS=Yes \
			-DBUILD_MARBLE_EXAMPLES=Yes

# TODO:
#  * Marble tools , Build various Marble tools for e.g. file format
#    conversion. Toggle with BUILD_MARBLE_TOOLS=YES/NO.
#  * Marble library C++ examples , Build C++ examples showing how to use
#    the Marble library. Toggle with BUILD_MARBLE_EXAMPLES=YES/NO.

post-extract:
	rm ${WRKSRC}/cmake/modules/FindPhonon.cmake

post-patch:
	cd ${WRKSRC}/tools; for c in */CMakeLists.txt; do \
		echo 'install(TARGETS $${TARGET}' >>$$c; \
		echo '        RUNTIME DESTINATION lib/marble/tools)' >>$$c; \
	done

# move arch-specific files outside share/
post-install:
	rm -Rf ${PREFIX}/lib/marble/examples
	${INSTALL_DATA_DIR} ${PREFIX}/lib/marble/examples
	cd ${PREFIX}/share/apps/marble/examples; \
	for e in *; do \
		test -d $$e || continue; \
		mv $$e/$$e ../../../../lib/marble/examples/$$e; \
		ln -s ../../../../../lib/marble/examples/$$e $$e/$$e; \
	done

.include <bsd.port.mk>
