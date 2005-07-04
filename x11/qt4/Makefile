# $OpenBSD: Makefile,v 1.1.1.1 2005/07/04 11:10:13 espie Exp $
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
PKGNAME-debug=		qt4-debug-${VERSION}
FULLPKGNAME=		qt4-${VERSION}
FULLPKGNAME-html=	qt4-html-${VERSION}

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
CONFIGURE_ARGS+=	-plugindir ${QT_PLUGINSDIR}
CONFIGURE_ARGS+=	-docdir ${QT_DOC}
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

QT_INCDIR=	${PREFIX}/include/X11/qt4
TRUEDIR=	${TRUEPREFIX}/lib/qt4
QT_LIBDIR=	${PREFIX}/lib/qt4
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

INCDIRS=	Qt Qt/arch QtCore QtCore/arch QtXml QtGui QtSql \
		QtNetwork QtOpenGL Qt3Support QtDesigner

QMAKE=${WRKBUILD}/bin/qmake


FAKE_FLAGS=INSTALL_ROOT=${WRKINST}

do-install:
	# libraries
	${INSTALL_DATA_DIR} ${QT_LIBDIR} ${QT_PKGCFGDIR}
.for l v in ${LIBRARIES}
	@echo -n "Install lib $l $v"
	@if test -f ${WRKBUILD}/lib/lib$l.a; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/lib$l.a ${QT_LIBDIR}; \
	 echo -n " unshared"; \
	fi
	@if test -f ${WRKBUILD}/lib/lib$l.so.$v; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/lib$l.so.$v ${QT_LIBDIR}; \
	 ln -sf qt4/lib$l.so.$v ${PREFIX}/lib; \
	 echo -n " shared"; \
	fi
	@if test -f ${WRKBUILD}/lib/$l.pc; then \
	    sed -e 's,-L${WRKBUILD}/lib,,g' <${WRKBUILD}/lib/$l.pc >${QT_PKGCFGDIR}/$l.pc; \
	    echo -n " cfg"; \
	fi
	@echo
.endfor
	# includes
	${INSTALL_DATA_DIR} ${QT_INCDIR}
.for i in ${INCDIRS}
	${INSTALL_DATA_DIR} ${QT_INCDIR}/$i
.endfor
	cd ${WRKSRC}/include; find .  -type f|while read i; do \
		${INSTALL_DATA} $$i ${QT_INCDIR}/`dirname $$i`; \
	done
	# programs
	${INSTALL_PROGRAM_DIR} ${QT_BINDIR} 
.for p in ${PROGRAMS4} 
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_BINDIR}/$p
	@ln -sf ${TRUEPREFIX}/lib/qt4/bin/$p ${PREFIX}/bin/$p4
.endfor
.for p in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_BINDIR}/$p
	@ln -sf ${TRUEPREFIX}/lib/qt4/bin/$p ${PREFIX}/bin/$p
.endfor
	# documentation
	${INSTALL_DATA_DIR} ${QT_DOC}/html
	${INSTALL_DATA_DIR} ${QT_DOC}/html/images
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.{html,dcf} ${QT_DOC}/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/images/* ${QT_DOC}/html/images
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	# qmake stuff
	cp -R ${WRKSRC}/mkspecs ${QT_LIBDIR}/mkspecs
	# plugins
	cd ${WRKBUILD}/plugins; find .  -type f|while read i; do \
		j=`dirname $$i`; \
		${INSTALL_DATA_DIR} ${QT_PLUGINSDIR}/$$j; \
		${INSTALL_DATA} $$i ${QT_PLUGINSDIR}/$$j; \
	done
	# examples and demos
	cd ${WRKBUILD}/examples && ${MAKE_PROGRAM}  install INSTALL_ROOT=${WRKINST}
	cd ${WRKBUILD}/demos && ${MAKE_PROGRAM}  install INSTALL_ROOT=${WRKINST}

# cleanup
	cd ${PREFIX}/lib/qt4 && ln -sf . lib
	cd ${PREFIX}/lib/qt4 && ln -sf ../../include/X11/qt4 include

USE_GMAKE=Yes
.include <bsd.port.mk>
