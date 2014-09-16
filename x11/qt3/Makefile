# $OpenBSD: Makefile,v 1.113 2014/09/16 19:56:10 miod Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS= m88k

COMMENT-main=		C++ X11 GUI toolkit
COMMENT-examples=	examples and tutorial for qt3
COMMENT-html=		off-line html documentation for qt3
COMMENT-postgresql=	PostgresSQL plugin for qt3
COMMENT-mysql=		MySQL plugin for qt3
COMMENT-sqlite2=	sqlite2 plugin for qt3

PKGNAME=		qt3-${VERSION}
PKGNAME-mysql=		qt3-mysql-${VERSION}
PKGNAME-postgresql=	qt3-postgresql-${VERSION}
PKGNAME-examples=	qt3-examples-${VERSION}
PKGNAME-main=		qt3-mt-${VERSION}
FULLPKGNAME-html=	qt3-html-${VERSION}
FULLPKGPATH-html=	x11/qt3,-html
PKGNAME-sqlite2=	qt3-sqlite2-${VERSION}

REVISION-mysql= 	7
REVISION-postgresql= 	4
REVISION-main= 		7
REVISION-html= 		1
REVISION-examples=	1
REVISION-sqlite2= 	4

# the qt-mt library version number is used in a directory name.
# when bumping, be sure to also bump MODQT3_PLUGINS in qt3.port.mk
# and PKGNAME of any affected packages (qt3-mysql, qt3-postgresql,
# qt3-sqlite2, and others with MODQT_PLUGINS in their PLIST).
SHARED_LIBS=		qt-mt	33.0 \
			qui	2.0 \
			qui-mt	2.0

# note that qui-mt is a `false' library, just a link to qui.

# XXX be sure to update the qt3.port.mk version after a qt bump.
QT_PLUGINS=		plugins-${LIBqt-mt_VERSION:R}


VERSION=	3.8
DISTNAME=	qt-x11-free-3.${VERSION}
CATEGORIES=	x11
MASTER_SITES=	http://download.qt-project.org/archive/qt/3/

# Old official site
#MASTER_SITES0=	http://freedesktop.org/~daisuke/
MASTER_SITES0=	ftp://gd.tuwien.ac.at/opsys/linux/gentoo/distfiles/


PATCHFILES=	qt-x11-immodule-unified-qt3.3.8-20070321-gentoo.diff.bz2:0
PATCH_DIST_STRIP=	-p1

pre-configure:
	cd ${WRKDIST} && /bin/sh ./make-symlinks.sh

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=debug

PSEUDO_FLAVORS=	no_mysql no_postgresql no_sqlite2 no_examples
FLAVOR?=

# GPL/QPL
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

# For qsettings to write its setup
PORTHOME=	${WRKDIST}

MAKE_FLAGS=	DESIGNER_SUBDIR=dummy \
		LIBqt-mt_VERSION=$(LIBqt-mt_VERSION) \
		LIBqui_VERSION=$(LIBqui_VERSION)

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-qt-gif -system-libmng -system-libpng -system-libjpeg -system-zlib \
		-qt-imgfmt-mng -qt-imgfmt-png -qt-imgfmt-jpeg -sm -no-g++-exceptions \
		-v -stl -xrender -xft -fast \
		-no-sql-odbc \
		-tablet \
		-xinerama \
		-cups \
		-inputmethod \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include \
		-L${WRKSRC}/lib \
		-L${LOCALBASE}/lib

MULTI_PACKAGES+=-main -html -examples -mysql -postgresql -sqlite2

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=-debug
PKGDEBUG=-debug
FLAVOR += no_examples
.else
PKGDEBUG=
.endif

CONFIGURE_ARGS+=-thread

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-examples}
ALL_TARGET=sub-src sub-tools
.endif

# This is needed to find plugins
CONFIGURE_ARGS+=	-prefix ${QT_LIBDIR}
CONFIGURE_ARGS+=	-plugindir ${QT_PLUGINSDIR}

CONFIGURE_ENV=	QTDIR="${WRKSRC}" 

LIB_DEPENDS=
BUILD_DEPENDS=print/cups,-libs

.if ${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+= -I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib/mysql \
	-plugin-sql-mysql
.else
CONFIGURE_ARGS+=-no-sql-mysql
.endif


.if ${BUILD_PACKAGES:M-postgresql}
BUILD_DEPENDS+=databases/postgresql,-server
CONFIGURE_ARGS+= -I${LOCALBASE}/include/postgresql \
	    -I${LOCALBASE}/include/postgresql/server \
	    -L${LOCALBASE}/lib \
	    -I${LOCALBASE}/include -plugin-sql-psql
.else
CONFIGURE_ARGS+=-no-sql-psql
.endif

.if ${BUILD_PACKAGES:M-sqlite2}
CONFIGURE_ARGS+= -plugin-sql-sqlite
.else
CONFIGURE_ARGS+=-no-sql-sqlite
.endif


LIB_DEPENDS=		graphics/png \
			graphics/libmng
WANTLIB=		GL GLU ICE SM X11>=10 Xcursor Xext Xft Xi Xinerama \
			Xmu png mng \
			Xrandr Xrender fontconfig freetype jpeg lcms m stdc++ z


WANTLIB-main=		${WANTLIB} pthread c


LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			databases/mariadb
WANTLIB-mysql=		${WANTLIB} qt-mt mysqlclient

LIB_DEPENDS-postgresql=	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			databases/postgresql
WANTLIB-postgresql=	${WANTLIB} pq qt-mt

LIB_DEPENDS-sqlite2=	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			databases/sqlite
WANTLIB-sqlite2=	${WANTLIB} qt-mt sqlite

LIB_DEPENDS-examples=	${LIB_DEPENDS} \
			${BUILD_PKGPATH}
WANTLIB-examples=	${WANTLIB} pthread stdc++ c qt-mt


LIB_DEPENDS-html=
WANTLIB-html=
PKG_ARCH-html=		*


QT_INCDIR=	${PREFIX}/include/X11/qt3
TRUEDIR=	${TRUEPREFIX}/lib/qt3
QT_LIBDIR=	${PREFIX}/lib/qt3
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt3
QT_PLUGINSDIR=	${QT_LIBDIR}/${QT_PLUGINS}
QT_BINDIR=	${QT_LIBDIR}/bin

# for manpages in MESSAGE
SUBST_VARS=	QT_LIBDIR QT_DOC QT_PLUGINS

DOCS=	FAQ LICENSE.GPL README README-QT.TXT \
	changes-3* \
	README.immodule changes.immodule

NO_TEST=	Yes

PROGRAMS3=designer findtr moc qt20fix qtrename140 uic
PROGRAMS=assistant linguist lrelease lupdate qm2ts qmake qtconfig 

post-configure:
	perl -pi.bak -e 's,-L(\Q${WRKDIST}\E|\Q$$(LOCALBASE)\E)/lib,,' ${WRKDIST}/lib/qt-mt.pc
.if !${FLAVOR:Mdebug}
	@cd ${WRKSRC} && cp -R examples examples-src
	@find ${WRKSRC}/examples-src -name '*.orig' |xargs rm -f
	@find ${WRKSRC}/examples-src -name '.moc' |xargs rm -rf
	@find ${WRKSRC}/examples-src -name '.obj' |xargs rm -rf
	@cd ${WRKSRC} && cp -R tutorial tutorial-src
	@find ${WRKSRC}/tutorial-src -name '*.orig' |xargs rm -f
	@find ${WRKSRC}/tutorial-src -name '.moc' |xargs rm -rf
	@find ${WRKSRC}/tutorial-src -name '.obj' |xargs rm -rf

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
.else

post-patch:
	@rm -rf ${WRKSRC}/examples
	@rm -rf ${WRKSRC}/tutorial

.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKDIST}/lib/qt-mt.pc ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA_DIR} ${QT_INCDIR}
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man1
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man3
	${INSTALL_DATA_DIR} ${QT_DOC}/html
	# includes
	${INSTALL_DATA_DIR} ${QT_INCDIR}/private
	${INSTALL_DATA} ${WRKSRC}/include/*.h ${QT_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/include/private/*.h ${QT_INCDIR}/private
	${INSTALL_DATA_DIR} ${QT_BINDIR} ${QT_PLUGINSDIR}
	# documentation
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/lrelease.1 ${QT_MANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/lupdate.1 ${QT_MANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/moc.1 ${QT_MANDIR}/man1/moc3.1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/uic.1 ${QT_MANDIR}/man1/uic3.1
	${INSTALL_MAN} ${WRKSRC}/tools/linguist/qm2ts/qm2ts.1 ${QT_MANDIR}/man1
	@for i in ${WRKSRC}/doc/man/man3/*; do \
	  j=$${i%qt}; \
	  sed -e 's,\.3qt,\.3,g' <$$i >$$j && \
	  	${INSTALL_MAN} $$j ${QT_MANDIR}/man3; \
	done
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	cp -R ${WRKSRC}/doc/html/* ${QT_DOC}/html
	cp -R ${WRKSRC}/mkspecs ${QT_LIBDIR}/mkspecs
	# libraries
	@if [ -f ${WRKBUILD}/lib/libqt-mt.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt-mt.a ${PREFIX}/lib/qt3; \
	fi
	@if [ -f  ${WRKBUILD}/lib/libqt-mt.so.$(LIBqt-mt_VERSION) ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt-mt.so.$(LIBqt-mt_VERSION) ${PREFIX}/lib/qt3; \
	 ln -sf qt3/libqt-mt.so.$(LIBqt-mt_VERSION) ${PREFIX}/lib; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqui.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqui.a ${PREFIX}/lib/qt3; \
	fi
	@if [ -f  ${WRKBUILD}/lib/libqui.so.$(LIBqui_VERSION) ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqui.so.$(LIBqui_VERSION) ${PREFIX}/lib/qt3; \
	 ln -sf qt3/libqui.so.$(LIBqui_VERSION) ${PREFIX}/lib; \
	fi
	@${INSTALL_DATA} ${WRKBUILD}/lib/libeditor.a ${PREFIX}/lib/qt3
	@${INSTALL_DATA} ${WRKBUILD}/lib/libdesignercore.a ${PREFIX}/lib/qt3
	@${INSTALL_DATA} ${WRKBUILD}/lib/libqassistantclient.a ${PREFIX}/lib/qt3
.for p in ${PROGRAMS3}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_BINDIR}/$p
	@ln -sf ${TRUEPREFIX}/lib/qt3/bin/$p ${PREFIX}/bin/$p3
.endfor
.for p in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_BINDIR}/$p
	@ln -sf ${TRUEPREFIX}/lib/qt3/bin/$p ${PREFIX}/bin/$p
.endfor
	# plugins
	${INSTALL_DATA_DIR} ${QT_PLUGINSDIR}/designer \
		${QT_PLUGINSDIR}/sqldrivers ${QT_PLUGINSDIR}/styles \
		${QT_PLUGINSDIR}/inputmethods

.if ${BUILD_PACKAGES:M-postgresql}
	${INSTALL_DATA} ${WRKBUILD}/plugins/sqldrivers/libqsqlpsql.so \
	    ${QT_PLUGINSDIR}/sqldrivers
.endif
.if ${BUILD_PACKAGES:M-mysql}
	${INSTALL_DATA} ${WRKBUILD}/plugins/sqldrivers/libqsqlmysql.so \
	    ${QT_PLUGINSDIR}/sqldrivers
.endif
.if ${BUILD_PACKAGES:M-sqlite2}
	${INSTALL_DATA} ${WRKBUILD}/plugins/sqldrivers/libqsqlite.so \
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
	${INSTALL_DATA} ${WRKBUILD}/plugins/inputmethods/libqimsw-multi.so \
	    ${QT_PLUGINSDIR}/inputmethods
	${INSTALL_DATA} ${WRKBUILD}/plugins/inputmethods/libqimsw-none.so \
	    ${QT_PLUGINSDIR}/inputmethods
	${INSTALL_DATA} ${WRKBUILD}/plugins/inputmethods/libqsimple.so \
	    ${QT_PLUGINSDIR}/inputmethods
	${INSTALL_DATA} ${WRKBUILD}/plugins/inputmethods/libqxim.so \
	    ${QT_PLUGINSDIR}/inputmethods
# compatibility transition
.for p in ${PROGRAMS}
	cd ${PREFIX}/bin && ln -sf $p $p-mt
.  endfor
.for p in ${PROGRAMS3}
	cd ${PREFIX}/bin && ln -sf $p3 $p3-mt
.endfor
	cd ${PREFIX}/lib && ln -sf libqui.so.$(LIBqui_VERSION) libqui-mt.so.$(LIBqui_VERSION)
	cd ${PREFIX}/lib/qt3 && ln -sf libqui.so.$(LIBqui_VERSION) libqui-mt.so.$(LIBqui_VERSION)
# links for qtdir
	cd ${PREFIX}/lib/qt3 && ln -sf . lib
	cd ${PREFIX}/lib/qt3 && ln -sf ../../include/X11/qt3 include
# fix for qmake
	sed -e  s,${WRKDIST},${PREFIX}/lib/qt3, <${WRKBUILD}/.qmake.cache >${WRKBUILD}/mogrified.cache
	${INSTALL_DATA} ${WRKBUILD}/mogrified.cache ${PREFIX}/lib/qt3/.qmake.cache
	cd ${PREFIX}/lib/qt3 && ln -sf ../../share/doc/qt3 doc

.include <bsd.port.mk>
