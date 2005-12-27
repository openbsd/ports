# $OpenBSD: Makefile,v 1.56 2005/12/27 18:04:32 espie Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

COMMENT=		"C++ X11 GUI toolkit"
COMMENT-examples=	"examples and tutorial for qt3"
COMMENT-html=		"off-line html documentation for qt3"
COMMENT-postgresql=	"PostgresSQL plugin for qt3"
COMMENT-mysql=		"MySQL plugin for qt3"

PKGNAME=		qt3-${VERSION}
PKGNAME-mysql=		qt3-mysql-${VERSION}
PKGNAME-postgresql=	qt3-postgresql-${VERSION}
PKGNAME-examples=	qt3-examples-${VERSION}
FULLPKGNAME=		qt3-mt-${VERSION}p1${PKGDEBUG}
FULLPKGNAME-html=	qt3-html-${VERSION}

VERSION=	3.5
DISTNAME=	qt-x11-free-3.${VERSION}
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.troll.no/qt/source/

MASTER_SITES0=	http://freedesktop.org/~daisuke/

PATCHFILES=	qt-x11-immodule-unified-qt3.3.5-20051018.diff.bz2:0
PATCH_DIST_STRIP=	-p1

pre-configure:
	cd ${WRKDIST} && /bin/sh ./make-symlinks.sh

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=debug

PSEUDO_FLAVORS=	no_mysql no_postgresql no_examples mt
FLAVOR?=

# GPL/QPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
myWANTLIB=		GL GLU ICE SM X11 Xcursor Xext Xft Xi Xinerama Xmu \
			Xrandr Xrender fontconfig freetype jpeg lcms m z

USE_X11=	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

# For qsettings to write its setup
PORTHOME=	${WRKDIST}

MAKE_FLAGS=	DESIGNER_SUBDIR=dummy
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-qt-gif -system-libmng -system-libpng -system-libjpeg -system-zlib \
		-qt-imgfmt-mng -qt-imgfmt-png -qt-imgfmt-jpeg -sm -no-g++-exceptions \
		-v -stl -xrender -xft -fast \
		-no-sql-odbc \
		-tablet \
		-xinerama \
		-cups \
		-inputmethod \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include \
		-L${WRKSRC}/lib \
		-L${LOCALBASE}/lib

MULTI_PACKAGES+=-html

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=-debug
PKGDEBUG=-debug
.else
PKGDEBUG=
.endif

CONFIGURE_ARGS+=-thread

.if !${FLAVOR:L:Mdebug} && !${FLAVOR:L:Mno_examples}
MULTI_PACKAGES+=	-examples
.else
ALL_TARGET=sub-src sub-tools
.endif

# This is needed to find plugins
CONFIGURE_ARGS+=	-prefix ${QT_LIBDIR}
CONFIGURE_ARGS+=	-plugindir ${QT_PLUGINSDIR}

CONFIGURE_ENV=	QTDIR="${WRKSRC}" 

SUBPACKAGE?=

LIB_DEPENDS=
BUILD_DEPENDS=::graphics/jpeg
BUILD_DEPENDS=::print/cups

e=
.if ${FLAVOR:L:Mno_mysql}
e:=$e,no_mysql
.endif
.if ${FLAVOR:L:Mno_postgresql}
e:=$e,no_postgresql
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

.if !empty(FLAVOR:L:Mno_postgresql)
CONFIGURE_ARGS+=-no-sql-psql
.else
MULTI_PACKAGES+=	-postgresql
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-postgresql"
LIB_DEPENDS+=pq.2:postgresql-client-*:databases/postgresql
BUILD_DEPENDS+=::databases/postgresql,-server
.  endif
CONFIGURE_ARGS+= -I${LOCALBASE}/include/postgresql \
	    -I${LOCALBASE}/include/postgresql/server \
	    -L${LOCALBASE}/lib \
	    -I${LOCALBASE}/include -plugin-sql-psql
.endif

.if ${SUBPACKAGE} == "-examples" || ${SUBPACKAGE} == ""
myWANTLIB+=	pthread stdc++ c
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} != "-html"
LIB_DEPENDS+=	png.2::graphics/png \
		mng.1::graphics/libmng
WANTLIB=	${myWANTLIB}
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} != "-html" && ${SUBPACKAGE} != ""
LIB_DEPENDS+=	qt-mt.3::x11/qt3$e
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-html"
PKG_ARCH=	*
.endif

QT_INCDIR=	${PREFIX}/include/X11/qt3
TRUEDIR=	${TRUEPREFIX}/lib/qt3
QT_LIBDIR=	${PREFIX}/lib/qt3
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt3
QT_PLUGINSDIR=	${QT_LIBDIR}/plugins
QT_BINDIR=	${QT_LIBDIR}/bin

# for manpages in MESSAGE
SUBST_VARS=	QT_LIBDIR QT_DOC

DOCS=	FAQ LICENSE.GPL README README-QT.TXT \
	changes-3* \
	README.immodule changes.immodule

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

PROGRAMS3=designer findtr moc qt20fix qtrename140 uic
PROGRAMS=assistant linguist lrelease lupdate qm2ts qmake qtconfig 

LIBRARIES=qt-mt.so.3.35 qui.so.1.0 \
	editor.a designercore.a qassistantclient.a

.if !${FLAVOR:L:Mdebug}
post-configure:
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
	cd ${PREFIX}/lib && ln -sf libqui.so.1.0 libqui-mt.so.1.0
	cd ${PREFIX}/lib/qt3 && ln -sf libqui.so.1.0 libqui-mt.so.1.0
# links for qtdir
	cd ${PREFIX}/lib/qt3 && ln -sf . lib
	cd ${PREFIX}/lib/qt3 && ln -sf ../../include/X11/qt3 include
# fix for qmake
	sed -e  s,${WRKDIST},${PREFIX}/lib/qt3, <${WRKBUILD}/.qmake.cache >${WRKBUILD}/mogrified.cache
	${INSTALL_DATA} ${WRKBUILD}/mogrified.cache ${PREFIX}/lib/qt3/.qmake.cache

.include <bsd.port.mk>
