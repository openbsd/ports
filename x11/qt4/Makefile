# $OpenBSD: Makefile,v 1.75 2010/07/09 18:48:22 naddy Exp $

USE_GMAKE =		Yes
COMMENT-debug =		C++ GUI toolkit, debug
COMMENT-main =		C++ X11 GUI toolkit
COMMENT-examples =	examples for qt4
COMMENT-html =		off-line html documentation for qt4
COMMENT-postgresql =	PostgresSQL plugin for qt4
COMMENT-mysql =		MySQL plugin for qt4
COMMENT-sqlite2 =	sqlite2 plugin for qt4
COMMENT-sqlite =	sqlite plugin for qt4
COMMENT-tds =		tds plugin for qt4

PKGNAME =		qt4-${VERSION}
PKGNAME-mysql =		qt4-mysql-${PKGVERSION}p0
PKGNAME-postgresql =	qt4-postgresql-${PKGVERSION}p0
PKGNAME-examples =	qt4-examples-${PKGVERSION}p0
PKGNAME-sqlite2 =	qt4-sqlite2-${PKGVERSION}p0
PKGNAME-sqlite =	qt4-sqlite-${PKGVERSION}p0
PKGNAME-tds =		qt4-tds-${PKGVERSION}p0
PKGNAME-main =		qt4-${VERSION}p0
PKGNAME-debug =		qt4-debug-${PKGVERSION}
FULLPKGNAME-html =	qt4-html-${PKGVERSION}
FULLPKGPATH-html =	${BASE_PKGPATH},-html

SHARED_LIBS =	Qt3Support 8.0 \
		QtCore 8.0 \
		QtDesigner 7.0 \
		QtDesignerComponents 7.0 \
		QtGui 9.0 \
		QtNetwork 8.0 \
		QtOpenGL 7.0 \
		QtSql 8.0 \
		QtXml 8.0 \
		QtSvg 7.0 \
		QtTest 7.0 \
		QtAssistantClient 3.0 \
		QtDBus 2.0 \
		QtMultimedia 0.0 \
		QtScript 1.0 \
		QtCLucene 0.0 \
		QtHelp 1.0 \
		QtXmlPatterns 0.0 \
		QtScriptTools 0.0 \
		QtWebKit 1.0 \
		phonon 4.1


VERSION =	4.6.3
PKGVERSION =	4.6.3
DISTNAME =	qt-everywhere-opensource-src-${VERSION}

CATEGORIES =	x11
MASTER_SITES =	ftp://ftp.qt.nokia.com/qt/source/ \
		ftp://ftp.troll.no/qt/source/ \
		ftp://ftp.iasi.roedu.net/mirrors/ftp.trolltech.com/qt/source/ \
		ftp://ftp.ntua.gr/pub/X11/Qt/qt/source/ \
		ftp://ftp.tu-chemnitz.de/pub/Qt/qt/source/ \
		http://ftp.silug.org/pub/qt/source/


HOMEPAGE =	http://qt.nokia.com/

MAINTAINER =	Marc Espie <espie@openbsd.org>
 
FLAVORS =	debug
PSEUDO_FLAVORS =no_examples
FLAVOR ?=

# GPLv3, or LGPL.
# (GPLv2 not needed, since LGPL is more free)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_X11 =	Yes
MAKE_ENV =	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

# For qsettings to write its setup
PORTHOME =	${WRKDIST}

CONFIGURE_STYLE =	simple
SEPARATE_BUILD = 	simple
CONFIGURE_ARGS =	-qt-gif -system-libpng -system-libjpeg -system-zlib \
			-sm -system-sqlite \
			-v -stl -xrender -fast \
			-no-sql-odbc \
			-xinput \
			-xinerama \
			-cups \
			-confirm-license \
			-opensource \
			-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include/freetype2 \
			-I${X11BASE}/include \
			-L${WRKBUILD}/lib \
			-L${X11BASE}/lib

CONFIGURE_ARGS +=	-prefix ${QT_BASEDIR}
CONFIGURE_ARGS +=	-libdir ${QT_BASEDIR}
CONFIGURE_ARGS +=	-bindir ${QT_BINDIR}
CONFIGURE_ARGS +=	-headerdir ${QT_INCDIR}
CONFIGURE_ARGS +=	-docdir ${QT_DOC}
CONFIGURE_ARGS +=	-plugindir ${QT_PLUGINSDIR}
CONFIGURE_ARGS +=	-datadir ${QT_BASEDIR}
CONFIGURE_ARGS +=	-sysconfdir ${SYSCONFDIR}
CONFIGURE_ARGS +=	-examplesdir ${QT_BASEDIR}/examples
CONFIGURE_ARGS +=	-demosdir ${QT_BASEDIR}/demos
CONFIGURE_ARGS +=	-no-separate-debug-info

CONFIGURE_ARGS += 	-I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib/mysql \
			-plugin-sql-mysql
CONFIGURE_ARGS += 	-I${LOCALBASE}/include/postgresql \
	    		-I${LOCALBASE}/include/postgresql/server \
			-plugin-sql-psql

CONFIGURE_ENV =		LOCALBASE=${LOCALBASE} QTDIR="${WRKSRC}" \
			X11BASE=${X11BASE}
.if defined(MAKE_JOBS)
CONFIGURE_ENV +=	BOOTSTRAP_MAKE_FLAGS='-j${MAKE_JOBS}'
.endif

# fix to avoid gcc generating a huge uncompilable intermediate assembly
.if ${MACHINE_ARCH} == "hppa"
CXXFLAGS +=		-finline-limit=60
CONFIGURE_ENV +=	OPENSOURCE_CXXFLAGS="${CXXFLAGS}"
.endif

BUILD_DEPENDS +=	::print/cups
BUILD_DEPENDS +=	::x11/dbus
BUILD_DEPENDS +=	::databases/postgresql,-server

MULTI_PACKAGES =	-main -html -mysql -postgresql -sqlite2 -sqlite -tds

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS +=	-debug
MULTI_PACKAGES +=	-debug
.else
CONFIGURE_ARGS +=-release
.endif


.if ${FLAVOR:L:Mno_examples}
SUBTARGETS = 		sub-tools-bootstrap \
			sub-moc \
			sub-rcc \
			sub-uic \
			sub-corelib \
			sub-xml \
			sub-network \
			sub-gui \
			sub-sql \
			sub-script \
			sub-testlib \
			sub-qt3support \
			sub-dbus \
			sub-uic3 \
			sub-opengl \
			sub-xmlpatterns \
			sub-phonon \
			sub-svg \
			sub-scripttools \
			sub-plugins \
			sub-tools \
			sub-tools-qdoc3

ALL_TARGET =		${SUBTARGETS}
INSTALL_TARGET =	${SUBTARGETS:S/$/-install_subtargets/} \
			install_htmldocs install_qchdocs install_docimages \
			install_qmake install_mkspecs
.else
MULTI_PACKAGES +=	-examples
PROGRAMS +=		qtdemo pixeltool
.endif


LIB_DEPENDS =
WANTLIB =

commonWANTLIB =		ICE Xrender c GLU SM freetype pthread Xinerama \
			Xext GL Xi m X11.>=10 z fontconfig \
			expat
commonLIB_DEPENDS =	png.>=2::graphics/png

sqlWANTLIB =		m
sqlLIB_DEPENDS = 	QtCore.>=4,QtSql::${BASE_PKGPATH}


LIB_DEPENDS-main =	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			glib-2.0,gthread-2.0::devel/glib2 \
			jpeg::graphics/jpeg \
			mng::graphics/libmng \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base
WANTLIB-main =		${WANTLIB} ${commonWANTLIB} \
			lcms tiff gobject-2.0 \
			gstbase-0.10 gstreamer-0.10 xml2 \
			gobject-2.0 gmodule-2.0 \
			iconv intl


LIB_DEPENDS-mysql =	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			mysqlclient_r::databases/mysql
WANTLIB-mysql =		${WANTLIB} ${sqlWANTLIB} \
			crypto ssl pthread z


LIB_DEPENDS-postgresql =${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			pq.>=2:postgresql-client-*:databases/postgresql
WANTLIB-postgresql =	${WANTLIB} ${sqlWANTLIB} 
			

LIB_DEPENDS-sqlite2 =	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			sqlite::databases/sqlite
WANTLIB-sqlite2 =	${WANTLIB} ${sqlWANTLIB}


LIB_DEPENDS-sqlite =	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			sqlite3::databases/sqlite3
WANTLIB-sqlite =	${WANTLIB} ${sqlWANTLIB}


LIB_DEPENDS-tds =	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			sybdb::databases/freetds
WANTLIB-tds =		${WANTLIB} ${sqlWANTLIB}

LIB_DEPENDS-examples =	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			lib/qt4/QtDesigner,lib/qt4/QtCore.>=4,lib/qt4/QtGui,lib/qt4/QtNetwork,lib/qt4/QtOpenGL,lib/qt4/QtSql,lib/qt4/QtXml,lib/qt4/QtSvg,lib/qt4/QtTest,lib/qt4/Qt3Support,lib/qt4/QtAssistantClient,lib/qt4/QtDBus,lib/qt4/QtScript,lib/qt4/QtScriptTools,lib/qt4/QtHelp,lib/qt4/QtCLucene,lib/qt4/phonon,lib/qt4/QtMultimedia::${BASE_PKGPATH}
WANTLIB-examples =	${WANTLIB} ${commonWANTLIB}


LIB_DEPENDS-html =
WANTLIB-html =
PKG_ARCH-html =	*

.include <bsd.own.mk>

.if ${COMPILER_VERSION:L:Mgcc4*}
CONFIGURE_ARGS +=	-platform openbsd-g++4
PKG_ARGS += -DGCC4=1
WANTLIB += stdc++
LIB_DEPENDS-examples +=	QtWebKit,QtXmlPatterns::${BASE_PKGPATH}
WANTLIB-examples +=	sqlite3
LIB_DEPENDS-main += sqlite3::databases/sqlite3
.else
PKG_ARGS += -DGCC4=0
.endif

commonWANTLIB += 	stdc++

QT_BASEDIR =	${PREFIX}/lib/qt4
QT_INCDIR =	${PREFIX}/include/X11/qt4
QT_EXAMPLES =	${QT_BASEDIR}/examples
QT_DOC =	${PREFIX}/share/doc/qt4
QT_PLUGINSDIR =	${QT_BASEDIR}/plugins
QT_BINDIR =	${QT_BASEDIR}/bin
QT_PKGCFGDIR =	${QT_BASEDIR}/pkgconfig

DOCS =	README

VMEM_WARNING =	Yes
NO_REGRESS =	Yes

PROGRAMS4 =	assistant designer findtr linguist lrelease lupdate moc qmake \
		qtconfig uic uic3
PROGRAMS += 	rcc qt3to4 syncqt qdbus


QMAKE =		${WRKBUILD}/bin/qmake

MAKE_FLAGS +=	INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
		INSTALL_FILE='${INSTALL_DATA}'
.for l v in $(SHARED_LIBS)
MAKE_FLAGS +=	LIB$l_VERSION=$v
.endfor

DESTDIRNAME =	INSTALL_ROOT

pre-patch:
	cd ${WRKDIST} && cp -R mkspecs/openbsd-g++ mkspecs/openbsd-g++4

post-install:
	# extra doc
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	# programs
	${INSTALL_PROGRAM_DIR} ${QT_BINDIR} 
	${INSTALL_PROGRAM} ${WRKSRC}/bin/{findtr,syncqt} ${QT_BINDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/qdoc3 ${QT_BINDIR}
.for p in ${PROGRAMS4} 
	@ln -sf ${TRUEPREFIX}/lib/qt4/bin/$p ${PREFIX}/bin/$p4
.endfor
	@ln -sf assistant ${PREFIX}/lib/qt4/bin/assistant4
.for p in ${PROGRAMS}
	@ln -sf ${TRUEPREFIX}/lib/qt4/bin/$p ${PREFIX}/bin/$p
.endfor
	# fix pkgconfig stuff
	@for i in ${QT_PKGCFGDIR}/*.pc; do \
	    perl -pi.bak -e 's,-L${WRKBUILD}/lib,,g;' $$i; \
	    rm $$i.bak; \
	done
	# this helps qdbuscpp2xml
	cd ${QT_BINDIR} && ln -sf moc moc4
.for l v in ${SHARED_LIBS}
	-test -f ${PREFIX}/lib/qt4/lib$l.so.$v && \
	    ln -sf qt4/lib$l.so.$v ${PREFIX}/lib
.endfor
# cleanup
	cd ${PREFIX}/lib/qt4 && ln -sf ../../include/X11/qt4 include

.include <bsd.port.mk>
