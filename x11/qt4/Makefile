# $OpenBSD: Makefile,v 1.163 2020/03/18 05:14:03 tb Exp $

USE_WXNEEDED =		Yes # QtWebKit

ONLY_FOR_ARCHS =	${GCC4_ARCHS} ${CLANG_ARCHS}
BROKEN-hppa =	libQtWebKit.so.3.0: undefined reference to __sync_sub_and_fetch_4
BROKEN-arm =	invalid instruction, vmov.u32 r2, r3, s8, s9, related to FELightingNEON.cpp

USE_GMAKE =		Yes
COMMENT-debug =		C++ GUI toolkit, debug
COMMENT-main =		C++ X11 GUI toolkit
COMMENT-examples =	examples for qt4
COMMENT-html =		off-line html documentation for qt4
COMMENT-postgresql =	PostgresSQL plugin for qt4
COMMENT-mysql =		MySQL plugin for qt4
COMMENT-sqlite2 =	sqlite2 plugin for qt4
COMMENT-tds =		tds plugin for qt4

PKGNAME =		qt4-${PKGVERSION}
PKGNAME-mysql =		qt4-mysql-${PKGVERSION}
PKGNAME-postgresql =	qt4-postgresql-${PKGVERSION}
PKGNAME-examples =	qt4-examples-${PKGVERSION}
PKGNAME-sqlite2 =	qt4-sqlite2-${PKGVERSION}
PKGNAME-tds =		qt4-tds-${PKGVERSION}
PKGNAME-main =		qt4-${PKGVERSION}
PKGNAME-debug =		qt4-debug-${PKGVERSION}
FULLPKGNAME-html =	qt4-html-${PKGVERSION}
FULLPKGPATH-html =	${BASE_PKGPATH},-html
REVISION-main =		22
REVISION-mysql =	8
REVISION-postgresql =	7
REVISION-sqlite2 =	7
REVISION-tds =		7
REVISION-debug =	4
REVISION-examples =	9
REVISION-html =		4

# XXX qmake include parser is bogus
DPB_PROPERTIES =	parallel	nojunk

SHARED_LIBS =	Qt3Support 10.0 \
		QtCore 10.0 \
		QtDesigner 8.0 \
		QtDesignerComponents 8.0 \
		QtGui 11.0 \
		QtNetwork 12.0 \
		QtOpenGL 8.0 \
		QtSql 9.0 \
		QtXml 9.0 \
		QtSvg 8.0 \
		QtTest 9.0 \
		QtDBus 4.0 \
		QtMultimedia 1.0 \
		QtScript 3.0 \
		QtCLucene 2.0 \
		QtHelp 3.0 \
		QtXmlPatterns 2.0 \
		QtScriptTools 1.0 \
		QtWebKit 6.0 \
		phonon 5.0 \
		QtDeclarative 2.0


VERSION =	4.8.7
PKGVERSION =	4.8.7
DISTNAME =	qt-everywhere-opensource-src-${VERSION}

CATEGORIES =	x11
MASTER_SITES =  https://download.qt.io/archive/qt/4.8/${VERSION}/

HOMEPAGE = 	https://www.qt.io/

MAINTAINER =	Marc Espie <espie@openbsd.org>

FLAVORS =	debug
FLAVOR ?=

# GPLv3, or LGPL.
# (GPLv2 not needed, since LGPL is more free)
PERMIT_PACKAGE =	Yes

MAKE_ENV =	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

COMPILER =		base-clang ports-gcc base-gcc

# For qsettings to write its setup
PORTHOME =	${WRKDIST}

CONFIGURE_STYLE =	simple
SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	-system-libpng -system-libjpeg -system-zlib \
			-sm -system-sqlite \
			-v -stl -xrender -fast \
			-no-sql-odbc \
			-xinput \
			-xinerama \
			-iconv \
			-cups \
			-confirm-license \
			-opensource \
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

CONFIGURE_ARGS +=	-I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib/mysql \
			-plugin-sql-mysql
CONFIGURE_ARGS +=	-I${LOCALBASE}/include/postgresql \
			-I${LOCALBASE}/include/postgresql/server \
			-plugin-sql-psql

# XXX make sure those libraries gets written to libQtGui.la
QMAKE_LIBS_GUI =	freetype SM ICE Xi Xrender Xinerama fontconfig Xext X11

CONFIGURE_ENV =		LOCALBASE=${LOCALBASE} QTDIR="${WRKSRC}" \
			X11BASE=${X11BASE} QMAKE_LIBS_GUI="${QMAKE_LIBS_GUI:C/^/-l/}"
.if defined(MAKE_JOBS)
CONFIGURE_ENV +=	BOOTSTRAP_MAKE_FLAGS='-j${MAKE_JOBS}'
.endif

BUILD_DEPENDS +=	x11/dbus
BUILD_DEPENDS +=	x11/gtk+2
BUILD_DEPENDS +=	databases/postgresql,-server

# configure checks for cups support; no LIB/RUN_DEPENDS because libcups
# is only dlopen()ed if found
BUILD_DEPENDS +=	print/cups,-libs

MULTI_PACKAGES =	-main -examples \
			-html -mysql -postgresql -sqlite2 -tds

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-debug
MULTI_PACKAGES +=	-debug
.else
CONFIGURE_ARGS +=-release
.endif

LIB_DEPENDS =
WANTLIB =
RUN_DEPENDS =

commonWANTLIB =		c pthread GL m ${COMPILER_LIBCXX}

sqlWANTLIB =		m lib/qt4/QtCore>=4 QtSql ${COMPILER_LIBCXX} pthread

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			databases/sqlite3 \
			devel/glib2 \
			graphics/jpeg \
			graphics/libmng \
			multimedia/gstreamer-0.10/plugins-base \
			graphics/png
WANTLIB-main =		${commonWANTLIB} iconv intl jpeg mng \
			lcms tiff gobject-2.0 gstvideo-0.10 \
			gstbase-0.10 gstreamer-0.10 xml2 \
			gobject-2.0 gmodule-2.0 gstinterfaces-0.10 \
			glib-2.0 gthread-2.0 \
			gstaudio-0.10 ICE SM X11>=10 Xext Xi Xinerama \
			Xrender fontconfig freetype png>=2 z \
			sqlite3
# QtNetwork dlopen()s ssl libs.
WANTLIB-main +=		ssl crypto

# dlopen'd icui18n in src/corelib/tools/qlocale_icu.cpp
RUN_DEPENDS-main +=	textproc/icu4c

LIB_DEPENDS-mysql =	${BUILD_PKGPATH} \
			databases/mariadb
WANTLIB-mysql =		${sqlWANTLIB} mariadb


LIB_DEPENDS-postgresql =${BUILD_PKGPATH} \
			databases/postgresql
WANTLIB-postgresql =	${sqlWANTLIB}  pq


LIB_DEPENDS-sqlite2 =	${BUILD_PKGPATH} \
			databases/sqlite
WANTLIB-sqlite2 =	${sqlWANTLIB} sqlite


LIB_DEPENDS-tds =	${BUILD_PKGPATH} \
			databases/freetds
WANTLIB-tds =		${sqlWANTLIB} sybdb

LIB_DEPENDS-examples =	${BUILD_PKGPATH}
WANTLIB-examples =	${commonWANTLIB} lib/qt4/QtDesigner \
			lib/qt4/QtCore lib/qt4/QtGui lib/qt4/QtNetwork \
			lib/qt4/QtOpenGL lib/qt4/QtSql lib/qt4/QtXml \
			lib/qt4/QtSvg lib/qt4/QtTest \
			lib/qt4/QtDBus \
			lib/qt4/QtScript lib/qt4/QtScriptTools \
			lib/qt4/QtHelp lib/qt4/phonon \
			lib/qt4/QtMultimedia lib/qt4/QtDeclarative \
			lib/qt4/QtWebKit lib/qt4/QtXmlPatterns \
			ICE SM X11 Xext  Xi Xinerama Xrender fontconfig \
			freetype

LIB_DEPENDS-html =
WANTLIB-html =
RUN_DEPENDS-html =
PKG_ARCH-html =	*

QT_BASEDIR =	${PREFIX}/lib/qt4
QT_INCDIR =	${PREFIX}/include/X11/qt4
QT_EXAMPLES =	${QT_BASEDIR}/examples
QT_DOC =	${PREFIX}/share/doc/qt4
QT_PLUGINSDIR =	${QT_BASEDIR}/plugins
QT_BINDIR =	${QT_BASEDIR}/bin
QT_PKGCFGDIR =	${QT_BASEDIR}/pkgconfig

DOCS =	README

NO_TEST =	Yes

PROGRAMS4 =	assistant designer findtr lconvert linguist \
		lrelease lupdate moc qmake qtconfig uic uic3
PROGRAMS +=	pixeltool qdbus qt3to4 qtdemo rcc syncqt


QMAKE =		${WRKBUILD}/bin/qmake

MAKE_FLAGS +=	INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
		INSTALL_FILE='${INSTALL_DATA}'
.for l v in $(SHARED_LIBS)
MAKE_FLAGS +=	LIB$l_VERSION=$v
.endfor

DESTDIRNAME =	INSTALL_ROOT

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CONFIGURE_ARGS +=	-platform openbsd-clang
.else
CONFIGURE_ARGS +=	-platform openbsd-g++4
# Using gcc 4.9 default standard with gcc>=6.
CXXFLAGS +=		-std=gnu++98
.endif

pre-patch:
	cd ${WRKDIST} && cp -R mkspecs/openbsd-g++ mkspecs/openbsd-g++4
	cd ${WRKDIST} && cp -R mkspecs/openbsd-g++ mkspecs/openbsd-clang

post-build:
.for l v in ${SHARED_LIBS}
	-${SUBST_CMD} ${WRKBUILD}/lib/lib$l.la
.endfor

post-install:
	# extra doc
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	# programs
	${INSTALL_PROGRAM_DIR} ${QT_BINDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/{findtr,syncqt} ${QT_BINDIR}
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
	@sed -i -e s/"-lQtWebKit"/"-lQtWebKit -Wl,-z,wxneeded"/ \
		${QT_PKGCFGDIR}/QtWebKit.pc
	# this helps qdbuscpp2xml
	cd ${QT_BINDIR} && ln -sf moc moc4
.for l v in ${SHARED_LIBS}
	-test -f ${PREFIX}/lib/qt4/lib$l.so.$v && \
	    ln -sf qt4/lib$l.so.$v ${PREFIX}/lib
.endfor
# cleanup
	cd ${PREFIX}/lib/qt4 && ln -sf ../../include/X11/qt4 include

.include <bsd.port.mk>
