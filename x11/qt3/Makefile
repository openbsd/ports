# $OpenBSD: Makefile,v 1.9 2002/03/30 18:13:31 brad Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

COMMENT=		C++ X11 GUI toolkit
COMMENT-examples=	examples and tutorial for qt3
COMMENT-html=		off-line html documentation for qt3
COMMENT-postgresql=	PostgresSQL plugin for qt3
COMMENT-mysql=		MySQL plugin for qt3

VERSION=	0.3
DISTNAME=	qt-x11-free-3.${VERSION}
CATEGORIES=	x11
NEED_VERSION=	1.508
MASTER_SITES=	ftp://ftp.troll.no/qt/source/

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>
FLAVORS=	no_mysql no_postgresql

# Adjust for arches where MySQL/PostgreSQL don't work.
.if !${MACHINE_ARCH:Mi386} && !${MACHINE_ARCH:Msparc}
FLAVOR+=	no_mysql
.else
FLAVOR?=
.endif

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

#CXXFLAGS+=	-g

USE_X11=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"

# For qsettings to write its setup
PORTHOME="${WRKDIST}"

MAKE_FLAGS=	DESIGNER_SUBDIR=dummy
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-qt-gif -system-libmng -system-libpng -system-libjpeg \
		-system-zlib -no-thread -sm -no-g++-exceptions \
		-v -stl -xrender \
		-no-sql-odbc \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include \
		-L${WRKSRC}/lib \
		-L${LOCALBASE}/lib

# This is needed to find plugins
CONFIGURE_ARGS+=	-prefix ${QT_LIBDIR}
#CONFIGURE_ARGS+=-static -debug
#CONFIGURE_ARGS+=-debug

# For XFree 4
#CONFIGURE_ARGS+=-xft
CONFIGURE_ENV=	QTDIR="${WRKSRC}" KDEDIR="${LOCALBASE}"

MULTI_PACKAGES=	-examples -html
SUBPACKAGE?=

QTMODULES=	styles tools kernel widgets dialogs \
		iconview workspace network canvas table xml opengl sql

#EXTRA_SAMPLES+=box gear glpixmap overlay overlay_x11 sharedbox

LIB_DEPENDS=
BUILD_DEPENDS=::graphics/jpeg

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
	    -L${LOCALBASE}/lib \
	    -I${LOCALBASE}/include -plugin-sql-psql
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} != "-html"
LIB_DEPENDS+=	png.2::graphics/png \
		mng.1::graphics/libmng
.endif
.if defined(PACKAGING) && ${SUBPACKAGE} != "-html" && ${SUBPACKAGE} != ""
LIB_DEPENDS+=	qt.3::x11/qt3$e
.endif

QT_INCDIR=	${PREFIX}/include/X11/qt3
TRUEDIR=	${TRUEPREFIX}/lib/qt3
QT_LIBDIR=	${PREFIX}/lib/qt3
QT_PLUGINSDIR=	${QT_LIBDIR}/plugins
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt3

# for manpages in MESSAGE
SUBST_VARS=	VERSION QT_LIBDIR QT_DOC

DOCS=	ANNOUNCE FAQ LICENSE.GPL README README.QT \
	changes-3*

post-configure:
	@cd ${WRKSRC} && cp -R examples examples-src
	@find ${WRKSRC}/examples-src -name '*.orig' |xargs rm
	@find ${WRKSRC}/examples-src -name '.moc' |xargs rm -r
	@find ${WRKSRC}/examples-src -name '.obj' |xargs rm -r
	@cd ${WRKSRC} && cp -R tutorial tutorial-src
	@find ${WRKSRC}/tutorial-src -name '*.orig' |xargs rm
	@find ${WRKSRC}/tutorial-src -name '.moc' |xargs rm -r
	@find ${WRKSRC}/tutorial-src -name '.obj' |xargs rm -r

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

LIBRARIES=qt.so.3.3 editor.so.1.0 qui.so.1.0
PROGRAMS3=moc findtr qt20fix qtrename140 uic designer
PROGRAMS=assistant linguist lrelease lupdate qm2ts \
	qtconfig qmake

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR}
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man1
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man3
	${INSTALL_DATA_DIR} ${QT_LIBDIR}/bin ${QT_PLUGINSDIR}
	${INSTALL_DATA_DIR} ${QT_EXAMPLES}
	${INSTALL_DATA_DIR} ${QT_TUTORIAL}
	${INSTALL_DATA_DIR} ${QT_DOC}/html
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
	# programs
.for p in ${PROGRAMS3}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${QT_LIBDIR}/bin
	@ln -sf ${TRUEPREFIX}/lib/qt3/bin/$p ${PREFIX}/bin/$p3
.endfor
.for p in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${PREFIX}/bin
.endfor
	# includes
	@rm -f ${WRKSRC}/include/qt_{mac,windows}.h
	${INSTALL_DATA_DIR} ${QT_INCDIR}/private
	${INSTALL_DATA} ${WRKSRC}/include/*.h ${QT_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/include/private/*.h ${QT_INCDIR}/private
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
	# documentation
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/lrelease.1 ${QT_MANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/lupdate.1 ${QT_MANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/moc.1 ${QT_MANDIR}/man1/moc3.1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/uic.1 ${QT_MANDIR}/man1
	@for i in ${WRKSRC}/doc/man/man3/*; do \
	  j=$${i%qt}; \
	  sed -e 's,\.3qt,\.3,g' <$$i >$$j && \
	  	${INSTALL_MAN} $$j ${QT_MANDIR}/man3; \
	done
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	cp -R ${WRKSRC}/doc/html/* ${QT_DOC}/html
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

FULLPKGNAME=		qt3-${VERSION}
FULLPKGNAME-examples=	qt3-examples-${VERSION}
FULLPKGNAME-html=	qt3-html-${VERSION}
FULLPKGNAME-mysql=	qt3-mysql-${VERSION}
FULLPKGNAME-postgresql=	qt3-postgresql-${VERSION}

.include <bsd.port.mk>
