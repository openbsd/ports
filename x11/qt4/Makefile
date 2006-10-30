# $OpenBSD: Makefile,v 1.22 2006/10/30 18:17:32 espie Exp $

COMMENT=		"C++ X11 GUI toolkit"
COMMENT-examples=	"examples for qt4"
COMMENT-html=		"off-line html documentation for qt4"
COMMENT-postgresql=	"PostgresSQL plugin for qt4"
COMMENT-mysql=		"MySQL plugin for qt4"
COMMENT-sqlite2=	"sqlite2 plugin for qt4"
COMMENT-sqlite=		"sqlite plugin for qt4"

PKGNAME=		qt4-${VERSION}
PKGNAME-mysql=		qt4-mysql-${VERSION}
PKGNAME-postgresql=	qt4-postgresql-${VERSION}
PKGNAME-examples=	qt4-examples-${VERSION}
PKGNAME-sqlite2=	qt4-sqlite2-${VERSION}
PKGNAME-sqlite=		qt4-sqlite-${VERSION}
FULLPKGNAME=		qt4-${VERSION}
FULLPKGNAME-html=	qt4-html-${VERSION}
SHARED_LIBS=	Qt3Support 6.0 \
		QtCore 6.0 \
		QtDesigner 6.0 \
		QtDesignerComponents 6.0 \
		QtGui 6.1 \
		QtNetwork 6.0 \
		QtOpenGL 6.0 \
		QtSql 6.0 \
		QtXml 6.0 \
		QtSvg 6.0 \
		QtTest 6.0 \
		QtAssistantClient 2.0 \
		QtDBus 0.0 


VERSION=	4.2.1
DISTNAME=	qt-x11-opensource-src-4.2.1


CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rediris.es/mirror/Qt/source/ \
		ftp://ftp.iasi.roedu.net/mirrors/ftp.trolltech.com/qt/source/ \
		ftp://ftp.ntua.gr/pub/X11/Qt/qt/source/ \
		ftp://ftp.tu-chemnitz.de/pub/Qt/qt/source/ \
		http://ftp.silug.org/pub/qt/source/ \
		ftp://ftp.troll.no/qt/source/

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>
 
PSEUDO_FLAVORS=	no_examples
FLAVOR?=

# GPL/QPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

# For qsettings to write its setup
PORTHOME=	${WRKDIST}

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-qt-gif -system-libpng -system-libjpeg -system-zlib \
		-sm -no-g++-exceptions -system-sqlite \
		-v -stl -xrender -fast \
		-no-sql-odbc \
		-tablet \
		-xinerama \
		-cups \
		-confirm-license \
		-release \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include \
		-L${WRKSRC}/lib \
		-L${LOCALBASE}/lib



CONFIGURE_ARGS+=	-prefix ${QT_BASEDIR}
CONFIGURE_ARGS+=	-libdir ${QT_BASEDIR}
CONFIGURE_ARGS+=	-bindir ${QT_BINDIR}
CONFIGURE_ARGS+=	-headerdir ${QT_INCDIR}
CONFIGURE_ARGS+=	-docdir ${QT_DOC}
CONFIGURE_ARGS+=	-plugindir ${QT_PLUGINSDIR}
CONFIGURE_ARGS+=	-datadir ${QT_BASEDIR}
CONFIGURE_ARGS+=	-sysconfdir ${SYSCONFDIR}
CONFIGURE_ARGS+=	-examplesdir ${QT_BASEDIR}/examples
CONFIGURE_ARGS+=	-demosdir ${QT_BASEDIR}/demos

CONFIGURE_ENV=	LOCALBASE=${LOCALBASE} QTDIR="${WRKSRC}" 

SUBPACKAGE?=

LIB_DEPENDS=
WANTLIB=
BUILD_DEPENDS+=::print/cups

MULTI_PACKAGES+=-html 


.if ${FLAVOR:L:Mno_examples}
ALL_TARGET=sub-src-all-ordered sub-tools-all-ordered
INSTALL_TARGET=sub-src-install_subtargets-ordered \
	sub-tools-install_subtargets-ordered install_htmldocs \
	install_translations install_qmake install_mkspecs
.else
MULTI_PACKAGES+=-examples
PROGRAMS+=	qtdemo
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} == ""
LIB_DEPENDS+=	jpeg::graphics/jpeg \
		mng::graphics/libmng \
		dbus-1::x11/dbus

WANTLIB+=	lcms
.endif

MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+= -I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib/mysql \
	-plugin-sql-mysql
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-mysql"
LIB_DEPENDS+=mysqlclient_r::databases/mysql
.  if defined(PACKAGING)
LIB_DEPENDS+=	QtCore.>=4,QtSql::x11/qt4
.  endif
WANTLIB+=	m z crypto ssl pthread
.endif

MULTI_PACKAGES+=	-postgresql
BUILD_DEPENDS+=::databases/postgresql,-server
CONFIGURE_ARGS+= -I${LOCALBASE}/include/postgresql \
	    -I${LOCALBASE}/include/postgresql/server \
	    -L${LOCALBASE}/lib \
	    -I${LOCALBASE}/include -plugin-sql-psql
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-postgresql" 
LIB_DEPENDS+=pq.>=2:postgresql-client-*:databases/postgresql
.  if defined(PACKAGING)
LIB_DEPENDS+=	QtCore.>=4,QtSql::x11/qt4
.  endif
WANTLIB+=	m z
.endif


CONFIGURE_ARGS+= -plugin-sql-sqlite
MULTI_PACKAGES+=	-sqlite2
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-sqlite2"
LIB_DEPENDS+=	sqlite::databases/sqlite
.  if defined(PACKAGING)
LIB_DEPENDS+=	QtCore.>=4,QtSql::x11/qt4
.  endif
WANTLIB+=	m z
.endif

MULTI_PACKAGES+=	-sqlite
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-sqlite"
LIB_DEPENDS+=	sqlite3::databases/sqlite3
.  if defined(PACKAGING)
LIB_DEPENDS+=	QtCore.>=4,QtSql::x11/qt4
.  endif
WANTLIB+=	m z
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-examples"
LIB_DEPENDS+=	QtCore.>=4,QtGui,QtNetwork,QtOpenGL,QtSql,QtXml,QtSvg,QtTest,Qt3Support,QtAssistantClient,QtDBus::x11/qt4
WANTLIB+=	dbus-1
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} == "" || ${SUBPACKAGE} == "-examples"
WANTLIB+=	ICE Xrender c GLU SM freetype pthread Xrandr Xinerama \
		stdc++ Xcursor Xext GL Xi m X11 z fontconfig Xfixes
LIB_DEPENDS+=	png.>=2::graphics/png
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} != "-html"
LIB_DEPENDS+=	glib-2.0::devel/glib2
WANTLIB+=	iconv intl

.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-html"
PKG_ARCH=	*
.endif

QT_BASEDIR=	${PREFIX}/lib/qt4
QT_INCDIR=	${PREFIX}/include/X11/qt4
QT_EXAMPLES=	${QT_BASEDIR}/examples
QT_DOC=		${PREFIX}/share/doc/qt4
QT_PLUGINSDIR=	${QT_BASEDIR}/plugins
QT_BINDIR=	${QT_BASEDIR}/bin
QT_PKGCFGDIR=	${QT_BASEDIR}

DOCS=	OPENSOURCE-NOTICE.TXT README

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

PROGRAMS4=assistant designer findtr linguist lrelease lupdate moc qm2ts qmake \
	qtconfig uic uic3
PROGRAMS+= rcc qt3to4 syncqt


QMAKE=${WRKBUILD}/bin/qmake

MAKE_FLAGS+=	INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
		INSTALL_FILE='${INSTALL_DATA}'
.for l v in $(SHARED_LIBS)
MAKE_FLAGS+=LIB$l_VERSION=$v
.endfor

FAKE_FLAGS=$(MAKE_FLAGS) INSTALL_ROOT=${WRKINST}

post-install:
	# extra doc
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	# programs
	${INSTALL_PROGRAM_DIR} ${QT_BINDIR} 
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
.for l v in ${SHARED_LIBS}
	ln -sf qt4/lib$l.so.$v ${PREFIX}/lib
.endfor
# cleanup
	cd ${PREFIX}/lib/qt4 && ln -sf ../../include/X11/qt4 include

USE_GMAKE=Yes
.include <bsd.port.mk>
