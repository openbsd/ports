# $OpenBSD: Makefile,v 1.33 2007/03/17 17:58:16 espie Exp $

COMMENT-main=		"C++ X11 GUI toolkit"
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
PKGNAME-main=		qt4-${VERSION}
FULLPKGNAME-html=	qt4-html-${VERSION}
SHARED_LIBS=	Qt3Support 6.2 \
		QtCore 6.2 \
		QtDesigner 6.1 \
		QtDesignerComponents 6.1 \
		QtGui 6.3 \
		QtNetwork 6.2 \
		QtOpenGL 6.2 \
		QtSql 6.2 \
		QtXml 6.1 \
		QtSvg 6.2 \
		QtTest 6.1 \
		QtAssistantClient 2.1 \
		QtDBus 0.1 


VERSION=	4.2.3
DISTNAME=	qt-x11-opensource-src-${VERSION}


CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rediris.es/mirror/Qt/source/ \
		ftp://ftp.iasi.roedu.net/mirrors/ftp.trolltech.com/qt/source/ \
		ftp://ftp.ntua.gr/pub/X11/Qt/qt/source/ \
		ftp://ftp.tu-chemnitz.de/pub/Qt/qt/source/ \
		http://ftp.silug.org/pub/qt/source/ \
		ftp://ftp.troll.no/qt/source/

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>
 
FLAVORS=	debug
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
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include \
		-L${WRKSRC}/lib \
		-L${LOCALBASE}/lib

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=-debug
.else
CONFIGURE_ARGS+=-release
.endif

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
CONFIGURE_ARGS+= -I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib/mysql \
	-plugin-sql-mysql
CONFIGURE_ARGS+= -I${LOCALBASE}/include/postgresql \
	    -I${LOCALBASE}/include/postgresql/server \
	    -L${LOCALBASE}/lib \
	    -I${LOCALBASE}/include -plugin-sql-psql
CONFIGURE_ARGS+= -plugin-sql-sqlite

CONFIGURE_ENV=	LOCALBASE=${LOCALBASE} QTDIR="${WRKSRC}" 

BUILD_DEPENDS+=::print/cups
BUILD_DEPENDS+=::databases/postgresql,-server

MULTI_PACKAGES=-main -html -mysql -postgresql -sqlite2 -sqlite


.if ${FLAVOR:L:Mno_examples}
ALL_TARGET=sub-src-all-ordered sub-tools-all-ordered
INSTALL_TARGET=sub-src-install_subtargets-ordered \
	sub-tools-install_subtargets-ordered install_htmldocs \
	install_translations install_qmake install_mkspecs
.else
MULTI_PACKAGES+=-examples
PROGRAMS+=	qtdemo pixeltool
.endif


LIB_DEPENDS=		glib-2.0,gthread-2.0::devel/glib2
WANTLIB=		iconv intl

commonWANTLIB=		ICE Xrender c GLU SM freetype pthread Xrandr Xinerama \
			stdc++ Xcursor Xext GL Xi m X11 z fontconfig Xfixes
commonLIB_DEPENDS=	png.>=2::graphics/png \
			dbus-1::x11/dbus

sqlWANTLIB=		m z
sqlLIB_DEPENDS= 	QtCore.>=4,QtSql::${BUILD_PKGPATH}


LIB_DEPENDS-main=	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			jpeg::graphics/jpeg \
			mng::graphics/libmng
WANTLIB-main=		${WANTLIB} ${commonWANTLIB} \
			lcms


LIB_DEPENDS-mysql=	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			mysqlclient_r::databases/mysql
WANTLIB-mysql=		${WANTLIB} ${sqlWANTLIB} \
			crypto ssl pthread


LIB_DEPENDS-postgresql=	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			pq.>=2:postgresql-client-*:databases/postgresql
WANTLIB-postgresql=	${WANTLIB} ${sqlWANTLIB}
			

LIB_DEPENDS-sqlite2=	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			sqlite::databases/sqlite
WANTLIB-sqlite2=	${WANTLIB} ${sqlWANTLIB}


LIB_DEPENDS-sqlite=	${LIB_DEPENDS} ${sqlLIB_DEPENDS} \
			sqlite3::databases/sqlite3
WANTLIB-sqlite=		${WANTLIB} ${sqlWANTLIB}


LIB_DEPENDS-examples=	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			QtDesigner,QtCore.>=4,QtGui,QtNetwork,QtOpenGL,QtSql,QtXml,QtSvg,QtTest,Qt3Support,QtAssistantClient,QtDBus::${BUILD_PKGPATH}
WANTLIB-examples=	${WANTLIB} ${commonWANTLIB}


LIB_DEPENDS-html=
WANTLIB-html=
PKG_ARCH-html=	*


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

PROGRAMS4=assistant designer findtr linguist lrelease lupdate moc qmake \
	qtconfig uic uic3
PROGRAMS+= rcc qt3to4 syncqt qdbus


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
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/{findtr,syncqt} ${QT_BINDIR}
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
