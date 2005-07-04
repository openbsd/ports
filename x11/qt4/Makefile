#/ $OpenBSD: Makefile,v 1.5 2005/07/04 21:44:04 espie Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

COMMENT=		"C++ X11 GUI toolkit"
COMMENT-examples=	"examples for qt4"
COMMENT-html=		"off-line html documentation for qt4"
COMMENT-postgresql=	"PostgresSQL plugin for qt4"
COMMENT-mysql=		"MySQL plugin for qt4"
COMMENT-debug=		"debug libraries for qt4"

PKGNAME=		qt4-${VERSION}
PKGNAME-mysql=		qt4-mysql-${VERSION}
PKGNAME-postgresql=	qt4-postgresql-${VERSION}
PKGNAME-examples=	qt4-examples-${VERSION}
PKGNAME-debug=		qt4-debug-${VERSION}p2
FULLPKGNAME=		qt4-${VERSION}p2
FULLPKGNAME-html=	qt4-html-${VERSION}p2

VERSION=	4.0.0
DISTNAME=	qt-x11-opensource-desktop-4.0.0
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rediris.es/mirror/Qt/source/ \
		ftp://ftp.iasi.roedu.net/mirrors/ftp.trolltech.com/qt/sources/ \
		ftp://ftp.ntua.gr/pub/X11/Qt/qt/source/ \
		ftp://ftp.tu-chemnitz.de/pub/Qt/source/ \
		ftp://ftp.silug.org/mirrors/ftp.trolltech.com/qt/source/ \
		ftp://ftp.troll.no/qt/source/

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVOR?=

# GPL/QPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
myWANTLIB=		GL GLU ICE SM X11 Xcursor Xext Xi Xinerama \
			Xrandr Xrender fontconfig freetype m z

USE_X11=	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

# For qsettings to write its setup
PORTHOME=	${WRKDIST}

MAKE_FLAGS=	DESIGNER_SUBDIR=dummy
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-qt-gif -system-libpng -system-libjpeg -system-zlib \
		-sm -no-g++-exceptions \
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



CONFIGURE_ARGS+=	-prefix ${QT_LIBDIR}
#CONFIGURE_ARGS+=	-bindir ${QT_BINDIR}
CONFIGURE_ARGS+=	-headerdir ${QT_INCDIR}
CONFIGURE_ARGS+=	-docdir ${QT_DOC}
#CONFIGURE_ARGS+=	-plugindir ${QT_PLUGINSDIR}
CONFIGURE_ARGS+=	-sysconfdir ${SYSCONFDIR}

CONFIGURE_ENV=	QTDIR="${WRKSRC}" 

SUBPACKAGE?=

LIB_DEPENDS=
BUILD_DEPENDS=::graphics/jpeg
BUILD_DEPENDS=::print/cups

MULTI_PACKAGES+=-html -debug -examples

MULTI_PACKAGES+=	-mysql
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-mysql" || ${SUBPACKAGE} == "-debug"
LIB_DEPENDS+=mysqlclient::databases/mysql
.endif
CONFIGURE_ARGS+= -I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib/mysql \
	-plugin-sql-mysql

MULTI_PACKAGES+=	-postgresql
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-postgresql" || ${SUBPACKAGE} == "-debug"
LIB_DEPENDS+=pq.2:postgresql-client-*:databases/postgresql
BUILD_DEPENDS+=::databases/postgresql,-server
.endif
CONFIGURE_ARGS+= -I${LOCALBASE}/include/postgresql \
	    -I${LOCALBASE}/include/postgresql/server \
	    -L${LOCALBASE}/lib \
	    -I${LOCALBASE}/include -plugin-sql-psql

.if defined(PACKAGING) && (${SUBPACKAGE} == "-mysql" || ${SUBPACKAGE} =="-postgresql")
LIB_DEPENDS+=	QtCore.4,QtSql::x11/qt4
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-examples"
LIB_DEPENDS+=	QtCore.4,QtGui,QtDesigner,QtNetwork,QtOpenGL,QtSql,QtXml::x11/qt4
.endif

.if ${SUBPACKAGE} == "-examples" || ${SUBPACKAGE} == ""
myWANTLIB+=	pthread stdc++ c
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} != "-html"
LIB_DEPENDS+=	png.2::graphics/png \
		jpeg::graphics/jpeg
WANTLIB=	${myWANTLIB}
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-html"
PKG_ARCH=	*
.endif

QT_LIBDIR=	${PREFIX}/lib/qt4
QT_INCDIR=	${PREFIX}/include/X11/qt4
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_DOC=		${PREFIX}/share/doc/qt4
QT_PLUGINSDIR=	${QT_LIBDIR}/plugins
QT_BINDIR=	${QT_LIBDIR}/bin
QT_PKGCFGDIR=	${QT_LIBDIR}/pkgconfig

# for manpages in MESSAGE
SUBST_VARS=	QT_LIBDIR QT_DOC

DOCS=	LICENSE.GPL README OPENSOURCE-NOTICE.TXT

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

PROGRAMS4=assistant designer findtr linguist lrelease lupdate moc qm2ts qmake \
	qtconfig uic uic3
PROGRAMS= rcc qtdemo qt3to4 syncqt

LIBRARIES=	Qt3Support 4.0 QtCore 4.0 QtDesigner 4.0 \
		QtDesignerComponents 4.0 QtGui 4.0 QtNetwork 4.0 \
		QtOpenGL 4.0 QtSql 4.0 QtXml 4.0

LIBRARIES+=	Qt3Support_debug 4.0 QtCore_debug 4.0 \
		QtDesigner_debug 4.0 QtDesignerComponents_debug 4.0 \
		QtGui_debug 4.0 QtNetwork_debug 4.0 \
		QtOpenGL_debug 4.0 QtSql_debug 4.0 \
		QtXml_debug 4.0

QMAKE=${WRKBUILD}/bin/qmake


FAKE_FLAGS=INSTALL_ROOT=${WRKINST}

DIRECTORIES= src/corelib src/gui src/network src/opengl src/qt3support src/sql src/xml \
	src/plugins/accessible/compat \
	src/plugins/accessible/widgets \
	src/plugins/codecs/cn \
	src/plugins/codecs/jp \
	src/plugins/codecs/kr \
	src/plugins/codecs/tw \
	src/plugins/imageformats/jpeg \
	src/plugins/sqldrivers/mysql \
	src/plugins/sqldrivers/psql \
	tools/designer/src/components/lib \
	tools/designer/src/lib \
	tools/designer/src/plugins/widgets

post-install:
	# extra debugging stuff
.for i in ${DIRECTORIES}
	cd ${WRKBUILD}/$i && ${MAKE_PROGRAM} LOCALBASE=${LOCALBASE} ${FAKE_FLAGS} debug-install
.endfor
	# extra doc
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	# programs
	${INSTALL_PROGRAM_DIR} ${QT_BINDIR} 
.for p in ${PROGRAMS4} 
	strip ${PREFIX}/lib/qt4/bin/$p
	@ln -sf ${TRUEPREFIX}/lib/qt4/bin/$p ${PREFIX}/bin/$p4
.endfor
.for p in ${PROGRAMS}
	strip ${PREFIX}/lib/qt4/bin/$p
	@ln -sf ${TRUEPREFIX}/lib/qt4/bin/$p ${PREFIX}/bin/$p
.endfor
	# fix pkgconfig stuff
	@for i in ${QT_PKGCFGDIR}/*.pc; do \
	    perl -pi.bak -e 's,-L${WRKBUILD}/lib,,g;' $$i; \
	    rm $$i.bak; \
	done
.for l v in ${LIBRARIES}
	mv -f ${QT_LIBDIR}/lib$l.so.$v.0 ${QT_LIBDIR}/lib$l.so.$v
	ln -sf qt4/lib$l.so.$v ${PREFIX}/lib
.endfor
# cleanup
	cd ${PREFIX}/lib/qt4 && ln -sf . lib
	cd ${PREFIX}/lib/qt4 && ln -sf ../../include/X11/qt4 include

USE_GMAKE=Yes
.include <bsd.port.mk>
