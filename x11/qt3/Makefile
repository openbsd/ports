# $OpenBSD: Makefile,v 1.37 2004/09/15 19:25:12 espie Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

COMMENT=		"C++ X11 GUI toolkit"
COMMENT-examples=	"examples and tutorial for qt3"
COMMENT-html=		"off-line html documentation for qt3"
COMMENT-postgresql=	"PostgresSQL plugin for qt3"
COMMENT-mysql=		"MySQL plugin for qt3"
COMMENT-base=		"include and docs for qt3"

PKGNAME=		qt3-${VERSION}
PKGNAME-mysql=		qt3-mysql-${VERSION}
PKGNAME-postgresql=	qt3-postgresql-${VERSION}
PKGNAME-examples=	qt3-examples-${VERSION}
FULLPKGNAME-base=	qt3-base-${VERSION}
FULLPKGNAME-html=	qt3-html-${VERSION}

VERSION=	3.3
DISTNAME=	qt-x11-free-3.${VERSION}
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.troll.no/qt/source/

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=mt debug

PSEUDO_FLAVORS=	no_mysql no_postgresql
FLAVOR?=mt

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

MAKE_FLAGS=	DESIGNER_SUBDIR=dummy
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-qt-gif -system-libmng -system-libpng -system-libjpeg -system-zlib \
		-qt-imgfmt-mng -qt-imgfmt-png -qt-imgfmt-jpeg -sm -no-g++-exceptions \
		-v -stl -xrender -xft -fast \
		-no-sql-odbc \
		-tablet \
		-xinerama \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include \
		-L${WRKSRC}/lib \
		-L${LOCALBASE}/lib

MULTI_PACKAGES+=-base -html

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=-debug
PKGDEBUG=-debug
.else
PKGDEBUG=
.endif

.if ${FLAVOR:L:Mmt}
FULLPKGNAME=		qt3-mt-${VERSION}${PKGDEBUG}
CONFIGURE_ARGS+=-thread
.else
CONFIGURE_ARGS+=-no-thread
.endif

.if ${FLAVOR:L:Mmt} && !${FLAVOR:L:Mdebug}
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
QT_PLUGINSDIR=	${QT_LIBDIR}/plugins${MT_SUFX}
QT_BINDIR=	${QT_LIBDIR}/bin${MT_SUFX}

# for manpages in MESSAGE
SUBST_VARS=	VERSION QT_LIBDIR QT_DOC MT_SUFX

DOCS=	FAQ LICENSE.GPL README README-QT.TXT \
	changes-3*

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

PROGRAMS3=designer findtr moc qt20fix qtrename140 uic
PROGRAMS=assistant linguist lrelease lupdate qm2ts qmake qtconfig 

LIBRARIES=qt${MT_SUFX}.so.3.33 qui${MT_SUFX}.so.1.0

.if ${FLAVOR:L:Mmt}
MT_SUFX=-mt
.else
MT_SUFX=
LIBRARIES+=editor.so.1.0
.endif

.if ${FLAVOR:L:Mmt} && !${FLAVOR:L:Mdebug}
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
	@ln -sf ${TRUEPREFIX}/lib/qt3/bin${MT_SUFX}/$p ${PREFIX}/bin/$p3${MT_SUFX}
.endfor
.for p in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_BINDIR}/$p
	@ln -sf ${TRUEPREFIX}/lib/qt3/bin${MT_SUFX}/$p ${PREFIX}/bin/$p${MT_SUFX}
.endfor
	# plugins
	${INSTALL_DATA_DIR} ${QT_PLUGINSDIR}/designer \
		${QT_PLUGINSDIR}/sqldrivers ${QT_PLUGINSDIR}/styles
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

.include <bsd.port.mk>
