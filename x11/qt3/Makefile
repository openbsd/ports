# $OpenBSD: Makefile,v 1.25 2003/01/09 23:06:30 espie Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

COMMENT=		C++ X11 GUI toolkit
COMMENT-examples=	examples and tutorial for qt3
COMMENT-html=		off-line html documentation for qt3
COMMENT-postgresql=	PostgresSQL plugin for qt3
COMMENT-mysql=		MySQL plugin for qt3
COMMENT-base=		include and docs for qt3

VERSION=	1.1
DISTNAME=	qt-x11-free-3.${VERSION}
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.troll.no/qt/source/

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=mt

PSEUDO_FLAVORS=	no_mysql no_postgresql
FLAVOR?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

#CXXFLAGS+=	-g

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++

USE_X11=	Yes
#USE_GMAKE=	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

# For qsettings to write its setup
PORTHOME="${WRKDIST}"

MAKE_FLAGS=	DESIGNER_SUBDIR=dummy
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-qt-gif -system-libmng -system-libpng -system-libjpeg \
		-system-zlib -sm -no-g++-exceptions \
		-v -stl -xrender \
		-no-sql-odbc \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include \
		-L${WRKSRC}/lib \
		-L${LOCALBASE}/lib

MULTI_PACKAGES+=-base -html

.if ${FLAVOR:L:Mmt}
FULLPKGNAME=		qt3-mt-${VERSION}
CONFIGURE_ARGS+=-thread
ALL_TARGET=sub-src sub-tools
.else
CONFIGURE_ARGS+=-no-thread
MULTI_PACKAGES+=	-examples
.endif

# This is needed to find plugins
CONFIGURE_ARGS+=	-prefix ${QT_LIBDIR}
CONFIGURE_ARGS+=	-plugindir ${QT_PLUGINSDIR}
#CONFIGURE_ARGS+=-static -debug
#CONFIGURE_ARGS+=-debug
#CONFIGURE_ARGS+=-static

# For XFree 4
#CONFIGURE_ARGS+=-xft
CONFIGURE_ENV=	QTDIR="${WRKSRC}" 

SUBPACKAGE?=

LIB_DEPENDS=
BUILD_DEPENDS=::graphics/jpeg

e=
.if ${FLAVOR:L:Mno_mysql}
e:=$e,no_mysql
.endif
.if ${FLAVOR:L:Mno_postgresql}
e:=$e,no_postgresql
.endif
.if ${FLAVOR:L:Mmt}
e:=$e,mt
.endif

.if !empty(FLAVOR:L:Mno_mysql)
CONFIGURE_ARGS+=-no-sql-mysql
.else
MULTI_PACKAGES+=	-mysql
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-mysql"
LIB_DEPENDS+=mysqlclient::databases/mysql
.  endif
CONFIGURE_ARGS+= -I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib/mysql \
	-plugin-sql-mysql
.endif

# This one doesn't work
#LIB_DEPENDS+=iodbc::databases/iodbc

.if !empty(FLAVOR:L:Mno_postgresql)
CONFIGURE_ARGS+=-no-sql-psql
.else
MULTI_PACKAGES+=	-postgresql
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-postgresql"
LIB_DEPENDS+=pq::databases/postgresql
.  endif
CONFIGURE_ARGS+= -I${LOCALBASE}/include/postgresql \
	    -I${LOCALBASE}/include/postgresql/server \
	    -L${LOCALBASE}/lib \
	    -I${LOCALBASE}/include -plugin-sql-psql
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} != "-html" && ${SUBPACKAGE} != "-base"
RUN_DEPENDS+=::x11/qt3,-base
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} != "-html" && ${SUBPACKAGE} != "-base"
LIB_DEPENDS+=	png.2::graphics/png \
		mng.1::graphics/libmng
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} != "-html" && ${SUBPACKAGE} != "" && ${SUBPACKAGE} != "-base"
LIB_DEPENDS+=	qt${MT_SUFX}.3::x11/qt3$e
.endif

QT_INCDIR=	${PREFIX}/include/X11/qt3
TRUEDIR=	${TRUEPREFIX}/lib/qt3
QT_LIBDIR=	${PREFIX}/lib/qt3
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt3
QT_PLUGINSDIR=	${QT_LIBDIR}/plugins${MT_SUFX}
QT_BINDIR=	${QT_LIBDIR}/bin${MT_SUFX}

# for manpages in MESSAGE
SUBST_VARS=	VERSION QT_LIBDIR QT_DOC

DOCS=	FAQ LICENSE.GPL README README.QT \
	changes-3*

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

PROGRAMS3=designer findtr moc qt20fix qtrename140 uic
PROGRAMS=assistant linguist lrelease lupdate qm2ts qmake qtconfig 

.if ${FLAVOR:L:Mmt}
MT_SUFX=-mt
LIBRARIES=qt${MT_SUFX}.so.3.11

post-patch:
	-rm -rf ${WRKSRC}/examples
	-rm -rf ${WRKSRC}/tutorial

.else
MT_SUFX=
LIBRARIES=qt.so.3.11 editor.so.1.0 qui.so.1.0

post-configure:
	@cd ${WRKSRC} && cp -R examples examples-src
	@find ${WRKSRC}/examples-src -name '*.orig' |xargs rm
	@find ${WRKSRC}/examples-src -name '.moc' |xargs rm -r
	@find ${WRKSRC}/examples-src -name '.obj' |xargs rm -r
	@cd ${WRKSRC} && cp -R tutorial tutorial-src
	@find ${WRKSRC}/tutorial-src -name '*.orig' |xargs rm
	@find ${WRKSRC}/tutorial-src -name '.moc' |xargs rm -r
	@find ${WRKSRC}/tutorial-src -name '.obj' |xargs rm -r

pre-install:
	${INSTALL_DATA_DIR} ${QT_EXAMPLES}
	${INSTALL_DATA_DIR} ${QT_TUTORIAL}
	# examples
	cp -R ${WRKSRC}/examples-src/* ${QT_EXAMPLES}
	@cd ${WRKSRC}/examples; for i in *; do \
	if [ -x $$i/$$i ]; then \
	    ${INSTALL_PROGRAM} $$i/$$i ${QT_EXAMPLES}/$$i; \
	fi; done
	@if [ -x ${WRKSRC}/examples/overlay_x11/overlayrubber ]; then \
	    ${INSTALL_PROGRAM} ${WRKSRC}/examples/overlay_x11/overlayrubber \
	    	${QT_EXAMPLES}/overlay_x11/overlayrubber; \
	fi
	cp -R ${WRKSRC}/tutorial-src/* ${QT_TUTORIAL}
	@cd ${WRKSRC}/tutorial; for i in *; do \
	if [ -x $$i/$$i ]; then \
	    ${INSTALL_PROGRAM} $$i/$$i ${QT_TUTORIAL}/$$i; \
	fi; done
.endif

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR}
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man1
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man3
	${INSTALL_DATA_DIR} ${QT_DOC}/html
	# includes
	@rm -f ${WRKSRC}/include/qt_{mac,windows}.h
	${INSTALL_DATA_DIR} ${QT_INCDIR}/private
	${INSTALL_DATA} ${WRKSRC}/include/*.h ${QT_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/include/private/*.h ${QT_INCDIR}/private
	${INSTALL_DATA_DIR} ${QT_BINDIR} ${QT_PLUGINSDIR}
	# documentation
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/lrelease.1 ${QT_MANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/lupdate.1 ${QT_MANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/moc.1 ${QT_MANDIR}/man1/moc3.1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/uic.1 ${QT_MANDIR}/man1/uic3.1
	@for i in ${WRKSRC}/doc/man/man3/*; do \
	  j=$${i%qt}; \
	  sed -e 's,\.3qt,\.3,g' <$$i >$$j && \
	  	${INSTALL_MAN} $$j ${QT_MANDIR}/man3; \
	done
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	cp -R ${WRKSRC}/doc/html/* ${QT_DOC}/html
	cp -R ${WRKSRC}/mkspecs ${QT_LIBDIR}/mkspecs
	# libraries
.for l in ${LIBRARIES}
	@if [ -f ${WRKBUILD}/lib/lib${l:C/\.so\..*/.a/} ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/lib${l:C/\.so\..*/.a/} ${PREFIX}/lib/qt3; \
	fi
	@if [ -f ${WRKBUILD}/lib/lib$l ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/lib$l ${PREFIX}/lib/qt3; \
	 ln -sf qt3/lib$l ${PREFIX}/lib; \
	fi
.endfor
.for p in ${PROGRAMS3}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_BINDIR}/$p
	@ln -sf ${TRUEPREFIX}/lib/qt3/bin${MT_SUFX}/$p ${PREFIX}/bin/$p3${MT_SUFX}
.endfor
.for p in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_BINDIR}/$p
	@ln -sf ${TRUEPREFIX}/lib/qt3/bin${MT_SUFX}/$p ${PREFIX}/bin/$p${MT_SUFX}
.endfor
	# plugins
	${INSTALL_DATA_DIR} ${QT_PLUGINSDIR}/imageformats \
		${QT_PLUGINSDIR}/sqldrivers ${QT_PLUGINSDIR}/styles \
		${QT_PLUGINSDIR}/designer
	${INSTALL_DATA} ${WRKBUILD}/plugins/imageformats/libqjpeg.so \
	    ${QT_PLUGINSDIR}/imageformats
	${INSTALL_DATA} ${WRKBUILD}/plugins/imageformats/libqmng.so \
	    ${QT_PLUGINSDIR}/imageformats
.if empty(FLAVOR:L:Mno_postgresql)
	${INSTALL_DATA} ${WRKBUILD}/plugins/sqldrivers/libqsqlpsql.so \
	    ${QT_PLUGINSDIR}/sqldrivers
.endif
.if empty(FLAVOR:L:Mno_mysql)
	${INSTALL_DATA} ${WRKBUILD}/plugins/sqldrivers/libqsqlmysql.so \
	    ${QT_PLUGINSDIR}/sqldrivers
.endif
	${INSTALL_DATA} ${WRKBUILD}/plugins/designer/libwizards.so \
	    ${QT_PLUGINSDIR}/designer
	${INSTALL_DATA} ${WRKBUILD}/plugins/designer/libcppeditor.so \
	    ${QT_PLUGINSDIR}/designer
	${INSTALL_DATA} ${WRKBUILD}/plugins/designer/libdlgplugin.so \
	    ${QT_PLUGINSDIR}/designer
	${INSTALL_DATA} ${WRKBUILD}/plugins/designer/librcplugin.so \
	    ${QT_PLUGINSDIR}/designer


PKGNAME=		qt3-${VERSION}p0
PKGNAME-mysql=		qt3-mysql-${VERSION}
PKGNAME-postgresql=	qt3-postgresql-${VERSION}
PKGNAME-examples=	qt3-examples-${VERSION}
FULLPKGNAME-base=	qt3-base-${VERSION}p0
FULLPKGNAME-html=	qt3-html-${VERSION}

.include <bsd.port.mk>
