# $OpenBSD: Makefile,v 1.17 2016/08/20 21:46:18 jca Exp $

BROKEN-powerpc =	qdoc3 goes into an infinite loop
USE_WXNEEDED =		Yes

COMMENT =		cross-platform IDE for use with Qt
V = 			1.3.1
DISTNAME =		qt-creator-${V}-src
PKGNAME =		qt-creator-${V}
REVISION =		7
EXTRACT_SUFX = 		.zip
ONLY_FOR_ARCHS =	${GCC4_ARCHS}

SHARED_LIBS =		Aggregation 0.0 \
			CPlusPlus 0.0 \
			DebuggingHelper 0.0 \
			ExtensionSystem 0.0 \
			QtConcurrent 0.0 \
			Utils 0.0

MAKE_FLAGS += 	LIBAggregation_VERSION=${LIBAggregation_VERSION} \
		LIBCPlusPlus_VERSION=${LIBCPlusPlus_VERSION} \
		LIBDebuggingHelper_VERSION=${LIBDebuggingHelper_VERSION} \
		LIBExtensionSystem_VERSION=${LIBExtensionSystem_VERSION} \
		LIBQtConcurrent_VERSION=${LIBQtConcurrent_VERSION} \
		LIBUtils_VERSION=${LIBUtils_VERSION}

CATEGORIES =		devel editors

HOMEPAGE =		http://qt.nokia.com/products/appdev/developer-tools/developer-tools

# LGPL 2.1 with C++ headers exception (more permissive than LGPL)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread stdc++ sqlite3
WANTLIB +=	QtDBus QtWebKit QtXmlPatterns QtDesigner>=7 
WANTLIB +=	QtDesignerComponents>=7 QtGui>=8 QtHelp QtNetwork>=7 
WANTLIB +=	QtScript QtSql>=7 QtSvg>=7 QtXml>=7 phonon
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
MASTER_SITES =	http://get.qt.nokia.com/qtcreator/

MODULES =	x11/qt4

RUN_DEPENDS = 	devel/gmake

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	Yes

ALL_TARGET = 		all qch_docs

#NO_TEST =		Yes

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}

QTCDH_SRC_DIR =		${WRKSRC}/share/qtcreator/gdbmacros
QTCDH_BUILD_DIR =	${WRKBUILD}/qtc-debugging-helper
QTCDH_INST_DIR =	${PREFIX}/lib/qt4/qtc-debugging-helper
QTDCH_LIB_FILE =	${QTCDH_BUILD_DIR}/libgdbmacros.so

pre-configure:
	mkdir -p ${WRKDIR}/bin/tools/qdoc3
	mkdir -p ${WRKDIR}/bin/bin
	ln -sf ${PREFIX}/lib/qt4/bin/qdoc3 ${WRKDIR}/bin/tools/qdoc3
	ln -sf ${PREFIX}/lib/qt4/bin/qhelpgenerator ${WRKDIR}/bin/bin

do-configure:
	cd ${WRKBUILD} && QTDIR=${WRKDIR}/bin qmake4 ${WRKSRC}/qtcreator.pro #CONFIG+=debug

# build Qt debugging helper
post-build:
	rm -Rf ${QTCDH_BUILD_DIR}
	mkdir ${QTCDH_BUILD_DIR}
	cd ${QTCDH_BUILD_DIR}; \
	qmake4 ${QTCDH_SRC_DIR}/gdbmacros.pro; \
	${MAKE_PROGRAM} ${MAKE_FLAGS}
	# avoid versioning for dlopen'ed library
	mv ${QTDCH_LIB_FILE}* ${QTDCH_LIB_FILE}

# install Qt debugging helper
post-install:
	${INSTALL_DATA_DIR} ${QTCDH_INST_DIR}
	${INSTALL_DATA} ${QTDCH_LIB_FILE} ${QTCDH_INST_DIR}

.include <bsd.port.mk>
